# Solution Exercise 6

And the sample solution:
```
# [project]/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project("TimeMachine" VERSION 1.0.2 LANGUAGES CXX)

add_subdirectory(vendor)
add_subdirectory(time_machine)
add_subdirectory(time_travel_interface)
add_subdirectory(flux_capacitor)
add_subdirectory(time_display)
add_subdirectory(settings)
```

```
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
```

```
# [project]/time_machine/tests/CMakeLists.txt

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
  COMMAND tests::time_machine
)
```
