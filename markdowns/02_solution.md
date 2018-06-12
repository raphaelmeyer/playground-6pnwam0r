# Solution Exercise 2

Here is an example solution of the `CMakeLists.txt` for the time travel interface library.
```
# [project]/time_travel_interface/CMakeLists.txt

add_library(time_travel INTERFACE)
add_library(time_machine::time_travel ALIAS time_travel)

target_include_directories(time_travel INTERFACE include)
```
