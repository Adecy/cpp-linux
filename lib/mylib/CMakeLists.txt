cmake_minimum_required(VERSION 3.2)
project(mylib VERSION 1.0)

file(GLOB_RECURSE APP_SOURCES src/*.c)

add_library(mylib ${APP_SOURCES})

target_include_directories(mylib PUBLIC include)
