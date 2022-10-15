cmake_minimum_required(VERSION 3.2)
project(libparser VERSION 1.0)

file(GLOB_RECURSE APP_SOURCES src/*.c)

add_library(libparser ${APP_SOURCES})

target_include_directories(libparser PUBLIC include)
