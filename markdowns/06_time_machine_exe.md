# Time Machine Executable

Now let us put everything together to build the time machine application.

## Exercise 6

Add the following components to the project:

- Library `time_machine` with alias target `time_machine::time_machine` and sources `src/time_machine.cc` `src/time_machine.h`

- Executable `time_machine_app` with alias target `time_machine::application` and source file `src/main.cc`.

- Tests `time_machine-tests` with alias target `tests::time_machine` and custom target `run-time_machine-tests` to run the tests.

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
