cmake_minimum_required(VERSION 3.16)

project(UriLib VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

option(BUILD_TESTS "Build the tests" OFF)

add_library(${PROJECT_NAME} STATIC 
  src/UriLib/test/test.h
  src/UriLib/test/test.cpp
)

target_include_directories(${PROJECT_NAME} PUBLIC src)

if (BUILD_TESTS)
  enable_testing()
  add_subdirectory(tests)
endif()



