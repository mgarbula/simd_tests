#include <iostream>
#include <fstream>
#include <mm_malloc.h>
#include <random>
#include <chrono>
#include <string>
// #include "warm_up.hpp"

// typedef __m256 float8;

const int SIZE_1D = 10000;
const int reps = 10;
const int VECTOR_SIZE = 8; //sizeof(float8) / sizeof(float);

struct alignas(32) array_element {
    float b[VECTOR_SIZE];
    float c[VECTOR_SIZE];
    float a[VECTOR_SIZE];
};

void init(array_element* arr, size_t size) {
    std::mt19937 rngb(123);
    std::mt19937 rngc(321);
    std::uniform_real_distribution<float> dist(1, 10);

    for (size_t i = 0; i < size; i++) {
        for (size_t j = 0; j < VECTOR_SIZE; j++) {
            arr[i].b[j] = dist(rngb);
            arr[i].c[j] = dist(rngc);
            arr[i].a[j] = 0;
        }
    }
}

void my_func(array_element* __restrict__ A, size_t size) {
    #pragma GCC unroll 1
    for (size_t i = 0; i < size; i++) {
        for (int j = 0; j < VECTOR_SIZE; j++) {
            float b = A[i].b[j];
            float c = A[i].c[j];
            float sum = b + c;
            float a = A[i].a[0];
            A[i].a[j] = a + sum;
        }
    }
}

void measure_loop(array_element* A, int size) {
    std::cout << "PERF_START\n";
    for (int k = 0; k < reps; k++) {
        my_func(A, size);
    }
    std::cout << "PERF_STOP\n";
}

int main(int argc, char* argv[]) {
    // if (argc < 2) {
    //     std::cout << "pass reps\n";
    //     return 1;
    // }
    size_t size = SIZE_1D * SIZE_1D / VECTOR_SIZE;
    // std::ofstream timesFile;
    // std::string fileName(argv[0]);
    // timesFile.open(fileName + ".txt", std::ios::app);

    array_element* A = (array_element*) _mm_malloc(size * sizeof(array_element), 32);
    if (A == nullptr) {
        printf("nullptr\n");
        return 1;
    }

    init(A, size);

    //int reps = std::stoi(argv[1]);
    //cpu_warmup();

    //my_func(A, size);
    auto t1 = std::chrono::high_resolution_clock::now();
    measure_loop(A, size);
    auto t2 = std::chrono::high_resolution_clock::now();
    auto ms_int = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    // timesFile << ms_int.count() << std::endl;
    std::cout << "avg time: " << ms_int.count() / (double) reps << std::endl;

    float sum = 0.0;
    for (size_t i = 0; i < size; i++) {
        for (int j = 0; j < VECTOR_SIZE; j++) {
            sum += A[i].a[j];
        }
    }
    printf("sum = %f\n", sum);

    _mm_free(A);
}
