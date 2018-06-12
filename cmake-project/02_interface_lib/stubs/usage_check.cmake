if(NOT TARGET time_travel)
  message(FATAL_ERROR "Target time_travel is not defined.")
endif()

if(NOT TARGET time_machine::time_travel)
  message(FATAL_ERROR "Alias target time_machine::time_travel is not defined.")
endif()

add_library(usage_check_1 usage_check.cc)
target_link_libraries(usage_check_1 PRIVATE time_machine::time_travel)

add_library(usage_check_2 usage_check.cc)
target_link_libraries(usage_check_2 PRIVATE time_travel)
