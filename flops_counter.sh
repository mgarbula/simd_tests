#!/bin/bash

# Usage: ./calculate_flops.sh <./path/to/my_program> [program_arguments...]

PROGRAM="$1"
FLOPS_EVENTS=(
    "fp_arith_inst_retired.scalar_single"
    "fp_arith_inst_retired.128b_packed_single"
    "fp_arith_inst_retired.256b_packed_single"
)

FLOPS_MULTIPLIERS=( 1 4 8 )

if [ -z "$PROGRAM" ]; then
    echo "Error: Please provide the path to your program."
    echo "Usage: ./calculate_flops.sh <./path/to/my_program> [args...]"
    exit 1
fi

if [ ! -x "$PROGRAM" ]; then
    echo "Error: Program '$PROGRAM' not found or is not executable."
    exit 1
fi

PROGRAM_ARGS="${@:2}"

TEMP_FILE=$(mktemp)

perf stat -r 1 -e "${FLOPS_EVENTS[0]}","${FLOPS_EVENTS[1]}","${FLOPS_EVENTS[2]}",duration_time -o "$TEMP_FILE" "$PROGRAM" $PROGRAM_ARGS

if [ $? -ne 0 ]; then
    echo "Error: perf command failed. Check if your events are supported."
    rm "$TEMP_FILE"
    exit 1
fi

TOTAL_FLOPS_COUNT=0

for i in "${!FLOPS_EVENTS[@]}"; do
    EVENT="${FLOPS_EVENTS[$i]}"
    MULTIPLIER="${FLOPS_MULTIPLIERS[$i]}"

    RAW_COUNT=$(grep "$EVENT" "$TEMP_FILE" | awk '{print $1}' | tr -d ',.')
    
    if [ -n "$RAW_COUNT" ]; then
        CONTRIBUTION=$(awk "BEGIN { print $RAW_COUNT * $MULTIPLIER }")
        TOTAL_FLOPS_COUNT=$(awk "BEGIN { print $TOTAL_FLOPS_COUNT + $CONTRIBUTION }")
    fi
done

EXEC_TIME_SEC=$(grep "seconds time elapsed" "$TEMP_FILE" | awk '{print $1}')
rm "$TEMP_FILE"

if [ -z "$EXEC_TIME_SEC" ] || [ "$(awk "BEGIN { print ($EXEC_TIME_SEC == 0) }")" -eq 1 ]; then
    echo "Error: Could not retrieve valid execution time."
    exit 1
fi

FLOPS_PER_SEC=$(awk "BEGIN { 
    if ($EXEC_TIME_SEC > 0) { 
        print $TOTAL_FLOPS_COUNT / $EXEC_TIME_SEC 
    } else {
        print 0
    }
}")

echo "$(printf "%.2f" "$FLOPS_PER_SEC")"