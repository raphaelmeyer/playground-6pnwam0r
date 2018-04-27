add_executable(time_display-tests
  time_display.cc
  colors.cc
  numbers.cc
)
add_executable(tests::time_display ALIAS time_display-tests)

target_link_libraries(time_display-tests
  PRIVATE
    catchorg::catch2
    time_machine::time_display
    time_machine::time_travel
)

target_include_directories(time_display-tests
  PRIVATE ../src
)

add_custom_target(run-time_display-tests ALL
  COMMAND time_display-tests
)
