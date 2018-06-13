# Solution Exercise 5

Sample solution:
```
# [project]/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project("TimeMachine" VERSION 1.0.2 LANGUAGES CXX)

add_subdirectory(vendor)
add_subdirectory(time_machine)
add_subdirectory(time_travel_interface)
add_subdirectory(flux_capacitor)
add_subdirectory(settings)
```

```
# [project]/time_display/CMakeLists.txt

add_library(time_display
  src/display.cc
  src/numbers.cc
  src/colors.cc
)

add_library(time_machine::time_display ALIAS time_display)

target_link_libraries(time_display
  PRIVATE
    time_machine::time_travel
    project::settings
)

target_include_directories(time_display
  PUBLIC include
)

add_subdirectory(tests)
```

```
# [project]/time_display/tests/CMakeLists.txt

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
    project::settings
)

target_include_directories(time_display-tests
  PRIVATE ../src
)

add_custom_target(run-time_display-tests ALL
  COMMAND tests::time_display
)
```
