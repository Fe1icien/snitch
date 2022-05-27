cmake_minimum_required(VERSION 3.13)

# Allow snRuntime to be built as a standalone library.
if (CMAKE_SOURCE_DIR STREQUAL CMAKE_CURRENT_SOURCE_DIR)
    list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../cmake)
    set(CMAKE_TOOLCHAIN_FILE toolchain-gcc CACHE STRING "Toolchain to use")

    project(bubu LANGUAGES C ASM)
    include(SnitchUtilities)

    add_compile_options(-O3 -g -ffunction-sections)

    message(${PROJECT_NAME})

    # Build the runtime.
    add_subdirectory(../snRuntime snRuntime)
endif()

include_directories(include)
include_directories(${SNRUNTIME_INCLUDE_DIRS})


# add_snitch_library(bubu example_kernel/kernel.c)

# file(GLOB SOURCES complex/kernels/*)
# add_snitch_library(complex SHARED ${SOURCES})
add_snitch_library(complex complex/kernels/complex_add.c complex/kernels/complex_mul.c complex/kernels/complex_polar.c complex/parallel_kernels/parallel_complex_add.c complex/parallel_kernels/parallel_complex_mul.c complex/parallel_kernels/parallel_complex_polar.c)
# add_snitch_library(complex complex/parallel_kernels/parallel_complex_add.c)

# Tests
enable_testing()
link_libraries(complex)
# link_libraries(bubu)
# add_snitch_test_executable(test example_kernel/main.c)
add_snitch_test_executable(test complex/complex_main.c)


# add_snitch_raw_test_args(complex-8c --no-opt-llvm --no-opt-jit --num-cores=8)
