cmake_minimum_required(VERSION 3.2)

add_executable(spike_macro_logging logging.c)
target_include_directories(spike_macro_logging PUBLIC .)

add_executable(spike_array_typedef array_typedef.c)
target_include_directories(spike_array_typedef PUBLIC .)

add_executable(spike_sscanf sscanf.c)
target_include_directories(spike_sscanf PUBLIC .)