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
    echo "Average of $1: $average"
}


# echo "start simple"
# for i in {1..100}
# do
#     ./simple
# done

# echo "start simple_dummy_loop"
# for i in {1..100}
# do
#     ./simple/simple_dummy_loop
# done

# echo "start vc_simple"
# for i in {1..100}
# do
#     ./vc/vc_simple
# done

# echo "start vc_simple_dummy_loop"
# for i in {1..100}
# do
#     ./vc/vc_simple_dummy_loop
# done

# echo "start intrinsics_simple"
# for i in {1..100}
# do
#     ./intrinsics_simple
# done

# echo "start intrinsics_simple_multiply"
# for i in {1..100}
# do
#     ./intrinsics/intrinsics_simple_multiply
# done

echo "start intrinsics_simple_multiply_dummy_loop"
for i in {1..100}
do
    ./intrinsics/intrinsics_simple_multiply_dummy_loop
done

# echo "start omp_simple"
# for i in {1..100}
# do
#     ./omp_simple
# done

# echo "start omp_simple_dummy_loop"
# for i in {1..100}
# do
#     ./omp/omp_simple_dummy_loop
# done

# echo "start get_from_memory"
# for i in {1..100}
# do
#     ./get_from_memory
# done

# average "./simple/simple.txt"
# average "./simple/simple_dummy_loop.txt"
# average "./vc/vc_simple.txt"
# average "./vc/vc_simple_dummy_loop.txt"
average "./intrinsics/intrinsics_simple.txt"
average "./intrinsics/intrinsics_simple_dummy_loop.txt"
average "./intrinsics/intrinsics_simple_multiply.txt"
average "./intrinsics/intrinsics_simple_multiply_dummy_loop.txt"
# average "./omp/omp_simple.txt"
# average "./omp/omp_simple_dummy_loop.txt"

average "get_from_memory.txt"