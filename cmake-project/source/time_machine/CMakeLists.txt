add_executable(time_machine
  src/main.cc
)
add_executable(time_machine::time_machine ALIAS time_machine)

target_link_libraries(time_machine
  PRIVATE
    time_machine::flux_capacitor
    time_machine::time_display
)

