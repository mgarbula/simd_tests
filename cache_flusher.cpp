#include <iostream>
#include <vector>
#include <numeric>
#include <mm_malloc.h>

constexpr long long CACHE_FLUSH_SIZE = 100 * 1024 * 1024 / sizeof(float);

int main() {
    float* dummy_buffer = (float*) _mm_malloc(CACHE_FLUSH_SIZE * sizeof(float), 32);

    if (!dummy_buffer) {
        return 0;
    }

    for (long long i = 0; i < CACHE_FLUSH_SIZE; ++i) {
        dummy_buffer[i] = (float)i * 0.1f;
    }

    _mm_free(dummy_buffer); 
    return 0;
}
