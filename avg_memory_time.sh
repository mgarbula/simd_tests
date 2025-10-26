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

touch avg_memory_time.txt

for i in {1..10}
do
    for j in {1..10}
    do
        ./get_from_memory $i
    done
    printf "$i " >> avg_memory_time.txt
    echo $(average "get_from_memory_$i.txt") >> avg_memory_time.txt
done

rm get_from_memory*.txt

gnuplot << EOF
    set terminal png size 800, 600
    
    set output "avg_memory_time.png"
    
    set title "X-Y Scatter Plot from avg_memory_time.txt" font ",14"
    set xlabel "X Axis Value"
    set ylabel "Y Axis Value"
    
    set grid

    set style data points

    plot "avg_memory_time.txt" using 1:2 title "Data Points" pt 7 linecolor rgb "red"
EOF