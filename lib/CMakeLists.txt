add_subdirectory(mylib)
add_subdirectory(caniot-lib)
add_subdirectory(libparser)
add_subdirectory(embedc-utils)

set(ENABLE_TESTING OFF CACHE BOOL "Enable testing" FORCE)
set(ENABLE_PROGRAMS OFF CACHE BOOL "Enable programs" FORCE)

include_directories(mbedtls/include)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/mbedtls)