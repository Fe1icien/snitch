cmake_minimum_required(VERSION 3.13)

project(complex)




set(SOURCE_FILES complex_main.c kernels/complex_add.c)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
