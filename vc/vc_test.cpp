#include <iostream>
#include <Vc/Vc>

using Vector = Vc::AVX2::Vector<double>;

int main() {
    Vector a(1.0);
    Vector b(2.0);

    Vector c = a * b + Vector(0.5);

    std::cout << "Vector C: " << c << std::endl;

    std::cout << "Vector width in doubles: " << Vector::Size << std::endl;
}