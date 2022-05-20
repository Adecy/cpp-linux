cmake_minimum_required(VERSION 3.2)

project(linux-dev VERSION 1.0)

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug) # Release
endif()

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_FLAGS "-Wall -Wextra -Wpedantic -Wno-unused-result")
set(CMAKE_C_FLAGS_DEBUG "-g -O2 -g2")
set(CMAKE_C_FLAGS_RELEASE "-O2")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-Wall -Wextra -Wpedantic")
set(CMAKE_CXX_FLAGS_DEBUG "-g -O2 -g2")
set(CMAKE_CXX_FLAGS_RELEASE "-O2")

include_directories(include)

add_subdirectory(libs)

add_subdirectory(samples)
