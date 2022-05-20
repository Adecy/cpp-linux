cmake_minimum_required(VERSION 3.2)

set(exe sample_fork)

file(GLOB_RECURSE SOURCES *.c)
add_executable(${exe} ${SOURCES})

target_include_directories(${exe} PUBLIC .)