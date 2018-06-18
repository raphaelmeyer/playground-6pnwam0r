# Time Machine Executable

Now let us put everything together to build the time machine application.

## Exercise 6

Add the following components to the project:

- **Library** `time_machine`:
  - Alias target: `time_machine::time_machine`
  - Sources:
    - `src/time_machine.cc`
    - `src/time_machine.h`
  - Private dependencies:
    - `time_machine::flux_capacitor`
    - `time_machine::time_display`

- **Executable** `time_machine_app`:
  - Alias target: `time_machine::application`
  - Sources:
    - `src/main.cc`
  - Private dependencies:
    - `time_machine::time_machine`
    - `project::settings`

- **Tests** `time_machine-tests`:
  - Alias target: `tests::time_machine`
  - Run target: `run-time_machine-tests`
  - Private dependencies:
    - `time_machine::time_machine`
    - `catchorg::catch2`
    - `project::settings`

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
