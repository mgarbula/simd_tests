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

touch fill_cache.txt

for i in {1..1152}
do
    echo Starting loops for $i
    for j in {1..10}
    do
        ./get_from_memory $i
    done
    printf "$i " >> fill_cache.txt
    echo $(average "fill_cache_$i.txt") >> fill_cache.txt
done

rm fill_cache_*.txt

gnuplot << EOF
    set terminal png size 800, 600
    
    set output "fill_cache.png"
    
    set title "X-Y Scatter Plot from fill_cache.txt" font ",14"
    set xlabel "X Axis Value"
    set ylabel "Y Axis Value"
    
    set grid

    set style data points

    plot "fill_cache.txt" using 1:2 title "Data Points" pt 7 linecolor rgb "red"
EOF