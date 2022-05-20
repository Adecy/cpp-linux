cmake_minimum_required(VERSION 3.2)

set(exe sample_pthread)

file(GLOB_RECURSE SOURCES *.c)
add_executable(${exe} ${SOURCES})

target_include_directories(${exe} PUBLIC .)
target_compile_definitions(${exe} PRIVATE "-D__MAGIC_NUMBER__=1")

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)
target_link_libraries(${exe} PRIVATE Threads::Threads PUBLIC mylib)