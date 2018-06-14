# Time Display Library

Now, we are going to add the time display library to project, including the tests.

## Exercise 5

Add the time display library to the project in the same way as the flux capacitor library.
Include the tests as well.

- **Library** `time_display`:
  - Alias target: `time_machine::time_display`
- **Tests** `time_display-tests`:
  - Alias target: `tests::time_display`
  - Run target: `run-time_display-tests`

::: Folder structure
```
[project]/
+--- CMakeLists.txt
+--- time_display/
|    +--- CMakeLists.txt
|    +--- include/
|    |    +--- time_display/
|    |         +--- display.h
|    +--- src/
|    |    +--- colors.cc
|    |    +--- colors.h
|    |    +--- display.cc
|    |    +--- numbers.cc
|    |    +--- numbers.h
|    +--- tests/
|         +--- CMakeLists.txt
|         +--- colors.cc
|         +--- numbers.cc
|         +--- time_display.cc
|
+--- ...
```
:::

@[Run CMake]({"stubs": ["05_time_disp/stubs/CMakeLists.txt", "05_time_disp/stubs/time_display/CMakeLists.txt", "05_time_disp/stubs/time_display/tests/CMakeLists.txt"], "command": "05_time_disp/check.sh"})
