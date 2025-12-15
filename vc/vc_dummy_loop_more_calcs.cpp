#include <iostream>
#include <fstream>
#include <random>
#include <chrono>
#include <Vc/Vc>
#include <mm_malloc.h>

using floatv = Vc::float_v;

const int SIZE_1D = 10000;

void init(float* arr, int size, int seed) {
    std::mt19937 rng(seed);
    std::uniform_real_distribution<float> dist(1, 10);

    for (int i = 0; i < size; i++) {
        arr[i] = dist(rng);
    }
}

int main(int argc, char* argv[]) {
    int size = SIZE_1D * SIZE_1D;
    std::ofstream timesFile;
    std::string fileName(argv[0]);
    int extra_calcs = std::stoi(argv[1]);
    timesFile.open(fileName + "_times_for_" + std::to_string(extra_calcs) + ".txt", std::ios::app);

    float* A = (float*) _mm_malloc(size * sizeof(float), 32);
    float* B = (float*) _mm_malloc(size * sizeof(float), 32);
    float* C = (float*) _mm_malloc(size * sizeof(float), 32);

    init(B, size, 123);
    init(C, size, 321);

    for (int i = 0; i < size; i++) {
        int b = B[i];
        int c = C[i];
        int a = b + c;
        a *= 3;
        A[i] = a;
    }

    auto t1 = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < size; i += floatv::Size) {
        floatv vec_b(B + i, Vc::Aligned);
        floatv vec_c(C + i, Vc::Aligned);
        floatv vec_mul = vec_b * vec_c;
        floatv vec_a = vec_b + vec_c;
        for (int k = 0; k < extra_calcs; k++) {
            vec_a = vec_a + vec_mul;
        }
        vec_a.store(A + i);
    }
    auto t2 = std::chrono::high_resolution_clock::now();
    auto ms_int = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    timesFile << ms_int.count() << std::endl;

    // float sum = 0;
    // for (int i = 0; i < size; i++) {
    //     sum += A[i];
    // }
    // printf("sum = %f\n", sum);

    _mm_free(A);
    _mm_free(B);
    _mm_free(C);
}
