cmake_minimum_required(VERSION 3.2)

set(exe sample_caniot_test)

file(GLOB_RECURSE SOURCES *.c)
add_executable(${exe} ${SOURCES})

target_include_directories(${exe} PUBLIC .)

target_link_libraries(${exe} PUBLIC caniotlib)