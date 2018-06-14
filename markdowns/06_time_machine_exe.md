# Time Machine Executable

Now let us put everything together to build the time machine application.

## Exercise 6

Add the following components to the project:

- **Library** `time_machine`:
  - Alias target: `time_machine::time_machine`
  - Sources:
    - `src/time_machine.cc`
    - `src/time_machine.h`

- **Executable** `time_machine_app`:
  - Alias target: `time_machine::application`
  - Sources:
    - `src/main.cc`

- **Tests** `time_machine-tests`:
  - Alias target: `tests::time_machine`
  - Run target: `run-time_machine-tests`

::: Folder structure
```
[project]/
+--- CMakeLists.txt
+--- time_machine/
|    +--- CMakeLists.txt
|    +--- src/
|    |    +--- CMakeLists.txt
|    |    +--- main.cc
|    |    +--- time_machine.cc
|    |    +--- time_machine.h
|    +--- tests/
|         +--- time_machine.cc
+--- ...
```
:::

@[Run CMake]({"stubs": ["06_time_machine_exe/stubs/CMakeLists.txt", "06_time_machine_exe/stubs/time_machine/CMakeLists.txt", "06_time_machine_exe/stubs/time_machine/tests/CMakeLists.txt"], "command": "06_time_machine_exe/check.sh"})
