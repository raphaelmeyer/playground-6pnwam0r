# Time travel interface library

A CMake project is typically organized as a tree in a folder structure.
With command [`add_subdirectory`](https://cmake.org/cmake/help/v3.10/command/add_subdirectory.html) a `CMakeLists.txt` adds a sub-folders to the project.
Each directory sub-folders must contain a `CMakeLists.txt`.

A library is added with command [`add_library`](https://cmake.org/cmake/help/v3.10/command/add_library.html).
It is good practice to add an [alias target](https://cmake.org/cmake/help/v3.10/command/add_library.html#alias-libraries) for the library.
The name of the alias library should use a namespace.

Example:
```
add_library(apple INTERFACE)
add_library(fruit::apple ALIAS apple)
```

## Exercise

Add an interface library called `time_travel` and with an alias `time_machine::time_travel`.
The library shall provide the include path `include` to its dependers by using command [`target_include_directories`](https://cmake.org/cmake/help/v3.10/command/target_include_directories.html).

```
[project]/
+--- CMakeLists.txt
+--- time_travel_interface/
     +--- CMakeLists.txt
     +--- include/
          +--- time_travel/
               +--- time_travel.h
```

@[Run CMake]({"stubs": ["02_interface_lib/project/CMakeLists.txt", "02_interface_lib/project/time_travel_interface/CMakeLists.txt"], "command": "02_interface_lib/check.sh"})
