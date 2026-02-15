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

# approaches=(intrinsics vc simple omp)
approaches=(intrinsics)

START=0
INCREMENT=1
END=120

# ROOFLINE_INTR="${ROOFLINE_DIR}/intrinsics_roofline_data.txt"
ROOFLINE_INTR="${ROOFLINE_DIR}/intrinsics_roofline_data_more_flops.txt"
ROOFLINE_OMP="${ROOFLINE_DIR}/omp_roofline_data.txt"
ROOFLINE_VC="${ROOFLINE_DIR}/vc_roofline_data.txt"
ROOFLINE_SIMPLE="${ROOFLINE_DIR}/simple_roofline_data.txt"

for element in "${approaches[@]}"
do
    echo Run $element

    FLOPS_FILE="${ROOFLINE_DIR}/${element}_flops_counter_calcs.txt"
    
    for (( i = START; i <= END; i += INCREMENT ))
    do
        echo Starting for $i
        for j in {1..5}
        do
            echo $(./flops_counter.sh ./${element}/${element}_dummy_loop_more_calcs $i) >> $FLOPS_FILE
        done
        printf "$((i)) " >> "${ROOFLINE_DIR}/${element}_roofline_data_more_flops.txt"
        echo $(average $FLOPS_FILE) >> "${ROOFLINE_DIR}/${element}_roofline_data_more_flops.txt"
        rm $FLOPS_FILE
    done
    rm ./${element}/*_times_for*.txt
    clear
done

# gnuplot << EOF
#     set terminal png size 1000, 700
#     set output "$ROOFLINE_DIR/roofline_model.png"

#     set title "Roofline model" font ",16"
#     set xlabel "number of extra operations"

#     set key top left
#     set grid
#     set logscale y 2

#     plot \
#         "$ROOFLINE_INTR" using 1:2 with linespoints title "intrinsics" lw 2 pt 7 lc rgb "red", \
#         "$ROOFLINE_VC" using 1:2 with linespoints title "vc" lw 2 pt 9 lc rgb "blue", \
#         "$ROOFLINE_OMP" using 1:2 with linespoints title "omp" lw 2 pt 5 lc rgb "green", \
#         "$ROOFLINE_SIMPLE" using 1:2 with linespoints title "simple" lw 2 pt 11 lc rgb "black"
# EOF


# more flops in intrinsics
gnuplot << EOF
    set terminal png size 1000, 700
    set output "$ROOFLINE_DIR/roofline_model_intrinsics_more_flops.png"

    set title "Roofline model for intrinsics more flops" font ",16"
    set xlabel "number of extra operations"

    set key top left
    set grid
    set logscale y 2

    plot "$ROOFLINE_INTR" using 1:2 with linespoints title "intrinsics" lw 2 pt 7 lc rgb "red"
EOF
