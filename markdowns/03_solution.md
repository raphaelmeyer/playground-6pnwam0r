# Solution Exercise 3

Here is a sample solution:
```
# [project]/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project("TimeMachine" VERSION 1.0.2 LANGUAGES CXX)

add_subdirectory(time_travel_interface)
add_subdirectory(flux_capacitor)
add_subdirectory(settings)
```

```
# [project]/flux_capacitor/CMakeLists.txt

add_library(flux_capacitor
  src/flux_capacitor.cc
  src/capacitor.cc
  src/flux.cc
)

add_library(time_machine::flux_capacitor ALIAS flux_capacitor)

target_link_libraries(flux_capacitor
  PUBLIC time_machine::time_travel
  PRIVATE project::settings
)

target_include_directories(flux_capacitor
  PUBLIC include
)
```
