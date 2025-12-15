#include <iostream>
#include <fstream>
#include <immintrin.h>
#include <random>
#include <chrono>

typedef __m256 float8;

const int SIZE_1D = 10000;
const int VECTOR_SIZE = sizeof(float8) / sizeof(float);

void init(float* arr, int size) {
    std::mt19937 rng_b(123);
    std::mt19937 rng_c(321);
    std::uniform_real_distribution<float> dist(1, 10);

    int i = 0;
    while (i < size) {
        // B
        for (int curr = i; curr < i + VECTOR_SIZE; curr++) {
            arr[curr] = dist(rng_b);
        }
        i += VECTOR_SIZE;
        // C
        for (int curr = i; curr < i + VECTOR_SIZE; curr++) {
            arr[curr] = dist(rng_c);
        }
        i += 2 * VECTOR_SIZE;
    }
}

void my_func(float* arr, int size) {
    //std::cout << "PERF_START\n";
    for (int i = 0; i < size; i += 3 * VECTOR_SIZE) {
        float8 vec_b = _mm256_load_ps(arr + i);
        float8 vec_c = _mm256_load_ps(arr + i + VECTOR_SIZE);

        float8 vec_a = _mm256_add_ps(vec_b, vec_c);
        _mm256_store_ps(arr + i + 2*VECTOR_SIZE, vec_a);
    }
    //std::cout << "PERF_STOP\n";
}

int main(int argc, char* argv[]) {
    int size = 3 * SIZE_1D * SIZE_1D;
    std::ofstream timesFile;
    std::string fileName(argv[0]);
    timesFile.open(fileName + ".txt", std::ios::app);

    float* arr = (float*) _mm_malloc(size * sizeof(float), 32);

    init(arr, size);

    auto t1 = std::chrono::high_resolution_clock::now();
    my_func(arr, size);
    auto t2 = std::chrono::high_resolution_clock::now();
    auto ms_int = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    // timesFile << ms_int.count() << std::endl;
    std::cout << ms_int.count() << std::endl;

    _mm_free(arr);
}
