#include <iostream>
#include <fstream>
#include <immintrin.h>
#include <random>
#include <chrono>
#include <string>
#include <cstring>
#include "warm_up.hpp"

typedef __m256 float8;

const int SIZE_1D = 10000;
const int reps = 10;
const int VECTOR_SIZE = sizeof(float8) / sizeof(float);

void init(float* arr, int size, int seed) {
    std::mt19937 rng(seed);
    std::uniform_real_distribution<float> dist(1, 10);

    for (int i = 0; i < size; i++) {
        arr[i] = dist(rng);
    }
}

void my_func(float* A, float* B, float* C, int size, int VECTOR_SIZE) {
    for (int i = 0; i < size; i += VECTOR_SIZE) {
        float8 vec_b = _mm256_load_ps(B + i);
        float8 vec_c = _mm256_load_ps(C + i);

        float8 sum = _mm256_add_ps(vec_b, vec_c);
        float8 vec_a = _mm256_load_ps(A + i);
        _mm256_store_ps(A + i, _mm256_add_ps(vec_a, sum));
    }
}

void measure_loop(float* A, float* B, float* C, int size) {
    std::cout << "PERF_START\n";
    for (int k = 0; k < reps; k++) {
        my_func(A, B, C, size, VECTOR_SIZE);
    }
    std::cout << "PERF_STOP\n";
}

int main(int argc, char* argv[]) {
    // if (argc < 2) {
    //     std::cout << "pass reps\n";
    //     return 1;
    // }
    int size = SIZE_1D * SIZE_1D;

    // std::ofstream timesFile;
    // std::string fileName(argv[0]);
    // timesFile.open(fileName + ".txt", std::ios::app);
    
    float* A = (float*) _mm_malloc(size * sizeof(float), 32);
    std::memset(A, 0, size);
    float* B = (float*) _mm_malloc(size * sizeof(float), 32);
    float* C = (float*) _mm_malloc(size * sizeof(float), 32);
    
    init(B, size, 123);
    init(C, size, 321);

    //int reps = std::stoi(argv[1]);
    
    cpu_warmup();
    //my_func(A, B, C, size, VECTOR_SIZE);
    auto t1 = std::chrono::high_resolution_clock::now();
    measure_loop(A, B, C, size);
    auto t2 = std::chrono::high_resolution_clock::now();
    auto ms_int = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    // timesFile << ms_int.count() << std::endl;
    std::cout << "avg time: " <<  ms_int.count() / (double) reps << std::endl;

    float sum = 0.0;
    for (int i = 0; i < size; i++) {
        sum += A[i];
    }
    printf("sum = %f\n", sum);

    _mm_free(A);
    _mm_free(B);
    _mm_free(C);
}
