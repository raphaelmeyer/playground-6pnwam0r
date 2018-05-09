add_executable(time_machine-tests
  time_machine.cc
)
add_executable(tests::time_machine ALIAS time_machine-tests)

target_link_libraries(time_machine-tests
  PRIVATE
    catchorg::catch2
    time_machine::time_machine
    project::settings
)

target_include_directories(time_machine-tests
  PRIVATE ../src
)

add_custom_target(run-time_machine-tests ALL
  COMMAND time_machine-tests
)
