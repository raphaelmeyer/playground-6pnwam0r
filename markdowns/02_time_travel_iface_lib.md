# Time travel interface library

A Cmake project 

A library is added with command [add_library](https://cmake.org/cmake/help/v3.10/command/add_library.html).
It is good practice to add an [alias target](https://cmake.org/cmake/help/v3.10/command/add_library.html#alias-libraries) for the library.
The name of the alias library should use a namespace.

Example:
```
add_library(apple INTERFACE)
add_library(fruit::apple ALIAS apple)
```

## Exercise

Add an interface library called `time_travel` and with an alias `time_machine::time_travel`.
The library shall provide include path `include` to its dependers by using command [target_include_directories](https://cmake.org/cmake/help/v3.10/command/target_include_directories.html).

```
[project]/
+--- CMakeLists.txt
+--- time_travel_interface/
     +--- CMakeLists.txt
     +--- include/
          +--- time_travel/
               +--- time_travel.h
```

@[Run CMake]({"stubs": ["02_interface_lib/CMakeLists.txt", "02_interface_lib/time_travel_interface/CMakeLists.txt"], "command": "02_interface_lib/check.sh"})
