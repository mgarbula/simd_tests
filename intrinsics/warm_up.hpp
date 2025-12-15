#include <iostream>
#include <immintrin.h>

#define WARMUP_SIZE (25 * 1024 * 1024)

void cpu_warmup() {
    printf("--- Start warmup ---\n");
    float* warmup_array = (float*) _mm_malloc(WARMUP_SIZE * sizeof(float), 32);
    std::fill(warmup_array, warmup_array + WARMUP_SIZE, 1.0f);
    float factor = 1.0000001f;
    for (int i = 0; i < 100; i++) {
        for (size_t i = 0; i < WARMUP_SIZE; i++) {
            warmup_array[i] = warmup_array[i] * factor + 0.5f;
        }
    }
    volatile float result_check = warmup_array[0]; 
    (void)result_check;
    _mm_free(warmup_array);
    printf("--- Warmup complete ---\n");
}