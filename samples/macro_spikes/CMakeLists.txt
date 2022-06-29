cmake_minimum_required(VERSION 3.2)

add_executable(spike_macro_logging logging.c)
target_include_directories(spike_macro_logging PUBLIC .)