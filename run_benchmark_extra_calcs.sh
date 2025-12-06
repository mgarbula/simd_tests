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

ROOFLINE_DIR="./roofline"

approaches=(intrinsics vc simple omp)

START=0
INCREMENT=1
END=60

for element in "${approaches[@]}"
do
    echo Run $element
    # BENCH_FILE="${ROOFLINE_DIR}/${element}_more_calcs.txt"
    BENCH_FILE_DUMMY="${ROOFLINE_DIR}/${element}_more_calcs_dummy_loop.txt"
    for (( i = START; i <= END; i += INCREMENT ))
    do
        echo Starting for $i
        for j in {1..5}
        do
            # ./${element}/${element}_more_calcs $i
            ./${element}/${element}_dummy_loop_more_calcs $i
        done
        # printf "$((i)) " >> $BENCH_FILE
        # echo $(average "./${element}/${element}_more_calcs_times_for_$i.txt") >> $BENCH_FILE
        printf "$((i)) " >> $BENCH_FILE_DUMMY
        echo $(average "./${element}/${element}_dummy_loop_more_calcs_times_for_$i.txt") >> $BENCH_FILE_DUMMY
    done
    rm ./${element}/*_times_for*.txt
    clear
done

AVG_INTR="${ROOFLINE_DIR}/intrinsics_more_calcs_dummy_loop.txt"
AVG_OMP="${ROOFLINE_DIR}/omp_more_calcs_dummy_loop.txt"
AVG_VC="${ROOFLINE_DIR}/vc_more_calcs_dummy_loop.txt"
AVG_SIMPLE_DUMMY="${ROOFLINE_DIR}/simple_more_calcs_dummy_loop.txt"
# AVG_SIMPLE="${ROOFLINE_DIR}/simple_more_calcs.txt"
# AVG_SIMPLE_O0="${ROOFLINE_DIR}/simple_more_calcs_O0.txt"
# AVG_SIMPLE_O0_DUMMY="${ROOFLINE_DIR}/simple_more_calcs_dummy_loop_O0.txt"

gnuplot << EOF
    set terminal png size 1000, 700
    set output "$ROOFLINE_DIR/more_calcs_5-12.png"
    
    set title "Roofline model" font ",16"
    set xlabel "number of extra operations"
    
    # Add a key (legend) in the top left corner
    set key top left
    set grid
    set logscale y 2

    # --- The Multi-Plot Command ---
    # Plot all four files in a single command, separating them by commas.
    # We use different line colors (lc) and point types (pt) for clarity.
    
    plot \
        "$AVG_SIMPLE_DUMMY" using 1:(((3+\$1*8)/\$2)*100000000) with linespoints title "Simple dummy" lw 2 pt 7 lc rgb "red", \
        "$AVG_INTR" using 1:(((3+\$1*8)/\$2)*100000000) with linespoints title "intr" lw 2 pt 9 lc rgb "blue", \
        "$AVG_VC" using 1:(((3+\$1*8)/\$2)*100000000) with linespoints title "vc" lw 2 pt 5 lc rgb "green", \
        "$AVG_OMP" using 1:(((3+\$1*8)/\$2)*100000000) with linespoints title "omp" lw 2 pt 11 lc rgb "black"
EOF