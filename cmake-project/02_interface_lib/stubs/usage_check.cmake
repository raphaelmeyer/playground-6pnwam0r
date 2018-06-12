add_library(usage_check_1 usage_check.cc)
target_link_libraries(usage_check1 PRIVATE time_machine::time_travel)

add_library(usage_check_2 usage_check.cc)
target_link_libraries(usage_check2 PRIVATE time_travel)
