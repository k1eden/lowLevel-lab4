# cmake_minimum_required(VERSION <specify CMake version here>)
project(lab4 C)

set(CMAKE_C_STANDARD 99)

add_executable(lab4 main.c bSort.c bSort.h swap.c swap.h)