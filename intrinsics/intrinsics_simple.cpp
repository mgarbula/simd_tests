#include <iostream>
#include <fstream>
#include <immintrin.h>
#include <random>
#include <chrono>

typedef __m256 float8;

const int SIZE_1D = 10000;

void init(float* arr, int size, int seed) {
    std::mt19937 rng(seed);
    std::uniform_real_distribution<float> dist(1, 10);

    for (int i = 0; i < size; i++) {
        arr[i] = dist(rng);
    }
}

int main() {
    int size = SIZE_1D * SIZE_1D;
    const int VECTOR_SIZE = sizeof(float8) / sizeof(float);
    std::ofstream timesFile;
    timesFile.open("intrinsics_simple_dummy_loop.txt", std::ios::app);

    float* A = (float*) _mm_malloc(size * sizeof(float), 32);
    float* B = (float*) _mm_malloc(size * sizeof(float), 32);
    float* C = (float*) _mm_malloc(size * sizeof(float), 32);

    init(B, size, 123);
    init(C, size, 321);

    auto t1 = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < size; i += VECTOR_SIZE) {
        float8 vec_b = _mm256_load_ps(B + i);
        float8 vec_c = _mm256_load_ps(C + i);

        float8 vec_a = _mm256_add_ps(vec_b, vec_c);
        _mm256_store_ps(A + i, vec_a);
    }
    auto t2 = std::chrono::high_resolution_clock::now();
    auto ms_int = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    timesFile << ms_int.count() << std::endl;

    _mm_free(A);
    _mm_free(B);
    _mm_free(C);
}
