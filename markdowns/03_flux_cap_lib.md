# Flux Capacitor Library

Command [`target_link_libraries`](https://cmake.org/cmake/help/v3.10/command/target_link_libraries.html) is used to specify dependencies.
Requirements for include directories are defined with
command [`target_include_directories`](https://cmake.org/cmake/help/v3.10/command/target_include_directories.html).

Both commands support the keywords `PRIVATE`, `PUBLIC` and `INTERFACE` to specify the usage requirements:
- `PRIVATE` Needed by me, but not my dependants.
- `PUBLIC` Needed by me and my dependants.
- `INTERFACE` Not needed by me, but by my dependants only.

## Exercise 3



::: Folder structure
```
[project]/
+--- CMakeLists.txt
+--- flux_capacitor/
|    +--- CMakeLists.txt
|    +--- include/
|    |    +--- flux_capacitor/
|    |         +--- flux_capacitor.h
|    +--- src/
|         +--- capacitor.cpp
|         +--- capacitor.h
|         +--- flux_capacitor.cc
|         +--- flux.cc
|         +--- flux.h
|
+--- ...
```
:::

@[Run CMake]({"stubs": ["03_flux_cap_lib/stubs/CMakeLists.txt", "03_flux_cap_lib/stubs/flux_capacitor/CMakeLists.txt"], "command": "03_flux_cap_lib/check.sh"})
