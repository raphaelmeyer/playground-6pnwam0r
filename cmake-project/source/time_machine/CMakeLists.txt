# [project]/time_machine/CMakeLists.txt

add_executable(time_machine_app
  src/main.cc
)
add_executable(time_machine::application ALIAS time_machine_app)

target_link_libraries(time_machine_app
  PRIVATE
    time_machine::time_machine
    project::settings
)

add_library(time_machine
  src/time_machine.cc
)
add_library(time_machine::time_machine ALIAS time_machine)

target_link_libraries(time_machine
  PRIVATE
    time_machine::flux_capacitor
    time_machine::time_display
)

add_subdirectory(tests)
