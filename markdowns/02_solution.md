# Solution Exercise 2

Here is a sample solution of the `CMakeLists.txt` for the time travel interface library.
```
# [project]/time_travel_interface/CMakeLists.txt

add_library(time_travel INTERFACE)
add_library(time_machine::time_travel ALIAS time_travel)

target_include_directories(time_travel INTERFACE include)
```

## Project settings

Interface libraries can also be used to define project settings.
For example the required C++ standard or additional compiler flags.

**Exapmle**:

```
[project]/
+--- CMakeLists.txt
+--- settings/
|    +--- CMakeLists.txt
+--- ...     
```

```
# [project]/settings/CMakeLists.txt

add_library(settings INTERFACE)
add_library(project::settings ALIAS settings)

target_compile_features(settings INTERFACE cxx_std_14)

target_compile_options(settings
  INTERFACE
    "-Wall"
    "-Wextra"
    "-Werror"
)
```

In addition to CMake commands [`target_compile_features`](https://cmake.org/cmake/help/v3.10/command/target_compile_features.html) and [`target_compile_options`](https://cmake.org/cmake/help/v3.10/command/target_compile_options.html)
from the example, there is also a command
[`target_compile_definitions`](https://cmake.org/cmake/help/v3.10/command/target_compile_definitions.html).

**Attention**: Only define compiler flags if you have a really good reason.
Adding compiler flags will break the portability and compatibility of your project.
