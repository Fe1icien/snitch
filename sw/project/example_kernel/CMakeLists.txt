cmake_minimum_required(VERSION 3.13)

project(simple_kernel)




set(SOURCE_FILES main.c kernel.c)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})


