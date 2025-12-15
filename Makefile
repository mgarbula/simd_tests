CXX := g++

CXXFLAGS := -std=c++17 -O3 -Wall -pedantic
AVX_FLAGS := -mavx2
LDFLAGS :=
OPENMP_FLAGS :=

# ifeq ($(DIR),)
# $(error ERROR: Please specify the source directory. Usage: make DIR=dirname)
# endif

ifeq ($(DIR),benchmark)
$(error ERROR: For benchmark dir use: make benchmark)
endif

ifeq ($(DIR),vc)
	LDFLAGS := -lVc
endif

ifeq ($(DIR),omp)
	OPENMP_FLAGS := -fopenmp
endif


SOURCES := $(wildcard $(DIR)/*.cpp)
EXECUTABLES := $(notdir $(SOURCES:.cpp=))
TARGETS := $(addprefix $(DIR)/,$(EXECUTABLES))

.PHONY: all clean benchmark
all: $(TARGETS)

$(DIR)/%: $(DIR)/%.cpp
	@echo "-> Compiling $^ to target $@..."
	$(CXX) $(CXXFLAGS) $(AVX_FLAGS) $< -o $@ $(LDFLAGS) $(OPENMP_FLAGS)

clean: 
	@echo "-> Cleaning all executables"
	rm -f $(TARGETS)

benchmark:
	$(CXX) $(CXXFLAGS) $(AVX_FLAGS) benchmark/intrinsics_simple.cpp -o benchmark/intrinsics_simple
	$(CXX) $(CXXFLAGS) $(AVX_FLAGS) benchmark/omp_simple.cpp -o benchmark/omp_simple -fopenmp
	$(CXX) $(CXXFLAGS) $(AVX_FLAGS) benchmark/vc_simple.cpp -o benchmark/vc_simple -lVc
	$(CXX) $(CXXFLAGS) $(AVX_FLAGS) benchmark/simple.cpp -o benchmark/simple
