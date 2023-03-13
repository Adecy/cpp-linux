cmake_minimum_required(VERSION 3.2)

set(exe sample_mbedtls_crt)
add_executable(${exe} crt.c)
target_include_directories(${exe} PUBLIC .)

target_link_libraries(${exe} mbedtls mbedcrypto mbedx509)