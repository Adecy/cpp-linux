cmake_minimum_required(VERSION 3.2)

add_executable(spike_macro_logging logging.c)
target_include_directories(spike_macro_logging PUBLIC .)

add_executable(spike_array_typedef array_typedef.c)
target_include_directories(spike_array_typedef PUBLIC .)

add_executable(spike_sscanf sscanf.c)
target_include_directories(spike_sscanf PUBLIC .)

add_executable(spike_structsize structsize.c)
target_include_directories(spike_structsize PUBLIC .)

add_executable(spike_urlmatch urlmatch.c)
target_include_directories(spike_urlmatch PUBLIC .)

add_executable(spike_filepath filepath.c)
target_include_directories(spike_filepath PUBLIC .)

add_executable(spike_route route.c)
target_include_directories(spike_route PUBLIC .)

add_executable(spike_misc misc.c)
target_include_directories(spike_route PUBLIC .)

add_executable(spike_preproc preproc.c)
target_include_directories(spike_preproc PUBLIC .)