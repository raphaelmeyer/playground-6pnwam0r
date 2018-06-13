# Flux Capacitor Library

Command [`target_link_libraries`](https://cmake.org/cmake/help/v3.10/command/target_link_libraries.html) is used to specify dependencies.
Requirements for include directories are defined with
command [`target_include_directories`](https://cmake.org/cmake/help/v3.10/command/target_include_directories.html) as seen before.

Both commands support the keywords `PRIVATE`, `PUBLIC` and `INTERFACE` to specify the usage requirements:
- `PRIVATE` Needed by me, but not my dependants.
- `PUBLIC` Needed by me and my dependants.
- `INTERFACE` Not needed by me, but by my dependants only.

> **Attention**: Build targets that have source files should always list the files explicitly.
Using a mechanism like file globing hides dependencies and prevents the build tools from correctly resolve build dependencies.

**Example**:
```
add_library(apple
  src/apple.cc
  src/peel.cc
)
add_library(fruit::apple ALIAS apple)

target_include_directories(apple
  PUBLIC include
)

target_link_libraries(apple
  PRIVATE fruit::seeds
  PUBLIC fruit::edible
)
```

## Exercise 3

Add library `flux_capacitor` to the project.
As usual also add an alias target named `time_machine::flux_capacitor`.

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
|         +--- capacitor.cc
|         +--- capacitor.h
|         +--- flux_capacitor.cc
|         +--- flux.cc
|         +--- flux.h
|
+--- ...
```
:::

The library has three source files: `src/capacitor.cc`, `src/flux.cc` and `src/flux_capacitor.cc`.

The library is implementing the `time_travel` interface.
It is used by the library and also part of its own public interface.
So the `time_travel` interface is a **public** dependency.

Also, don't forget to add the `project::settings` as a **private** dependency.

The `include` folder is a **public** include directory.


@[Run CMake]({"stubs": ["03_flux_cap_lib/stubs/CMakeLists.txt", "03_flux_cap_lib/stubs/flux_capacitor/CMakeLists.txt"], "command": "03_flux_cap_lib/check.sh"})
