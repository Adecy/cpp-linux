cmake_minimum_required(VERSION 3.2)

add_executable(sample_mbedtls main.c)
target_include_directories(sample_mbedtls PUBLIC .)

target_link_libraries(sample_mbedtls mbedtls mbedcrypto mbedx509)