add_library(time_travel INTERFACE)
add_library(time_machine::time_travel ALIAS time_travel)

target_include_directories(time_travel INTERFACE include)

