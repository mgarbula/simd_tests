#!/bin/bash

average () {
    average=$(awk '
        {
            total += $1;
            count++;
        }
        END {
            if (count > 0) {
                printf "%.6f\n", total / count;
            } else {
                print "0.000000";
            }
        }
    ' "$1")
    echo "$average"
}

AVG_INTR="./benchmark/avg_intrinsics.txt"
AVG_OMP="./benchmark/avg_omp.txt"
AVG_VC="./benchmark/avg_vc.txt"
AVG_SIMPLE="./benchmark/avg_simple.txt"

START=100
INCREMENT=100
END=10000

for (( i = START; i <= END; i += INCREMENT ))
do
    echo Starting for $i
    for j in {1..10}
    do
        ./benchmark/intrinsics_simple_dummy_loop $i
        ./benchmark/omp_simple_dummy_loop $i
        ./benchmark/vc_simple_dummy_loop $i
        ./benchmark/simple_dummy_loop $i
    done
    printf "$((3*i*i)) " >> $AVG_INTR
    echo $(average "./benchmark/intrinsics_simple_dummy_loop_times_for_$i.txt") >> $AVG_INTR

    printf "$((3*i*i)) " >> $AVG_OMP
    echo $(average "./benchmark/omp_simple_dummy_loop_times_for_$i.txt") >> $AVG_OMP

    printf "$((3*i*i)) " >> $AVG_VC
    echo $(average "./benchmark/vc_simple_dummy_loop_times_for_$i.txt") >> $AVG_VC

    printf "$((3*i*i)) " >> $AVG_SIMPLE
    echo $(average "./benchmark/simple_dummy_loop_times_for_$i.txt") >> $AVG_SIMPLE
done

rm ./benchmark/*_times_for*.txt

gnuplot << EOF
    set terminal png size 1000, 700
    set output "./benchmark/benchmark_dummy_loop.png"
    
    set title "Comparision of four approaches" font ",16"
    set xlabel "total size of data"
    set ylabel "time [microseconds]"
    
    # Add a key (legend) in the top left corner
    set key top left
    set grid
    
    # --- The Multi-Plot Command ---
    # Plot all four files in a single command, separating them by commas.
    # We use different line colors (lc) and point types (pt) for clarity.
    
    plot \
        "$AVG_INTR" using 1:2 with linespoints title "Intrinsics" lw 2 pt 7 lc rgb "red", \
        "$AVG_OMP" using 1:2 with linespoints title "OMP" lw 2 pt 9 lc rgb "blue", \
        "$AVG_VC" using 1:2 with linespoints title "VC" lw 2 pt 5 lc rgb "green", \
        "$AVG_SIMPLE" using 1:2 with linespoints title "Simple" lw 2 pt 11 lc rgb "black"
EOF