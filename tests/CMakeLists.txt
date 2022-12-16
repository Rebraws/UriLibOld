cmake_minimum_required(VERSION 3.16)

project(tests)
include(FetchContent)

FetchContent_Declare(googletest
  GIT_REPOSITORY https://github.com/Rebraws/googletest
  GIT_TAG release-1.11.2
  )

FetchContent_MakeAvailable(googletest)

file(GLOB SOURCES *.cpp)
file(GLOB HEADERS *.h)

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

target_link_libraries(${PROJECT_NAME} PRIVATE
  UriLib
  gtest
  gtest_main
)

add_test(
  NAME ${PROJECT_NAME}
  COMMAND ${PROJECT_NAME}
  )

include(GoogleTest)
gtest_discover_tests(${PROJECT_NAME})

