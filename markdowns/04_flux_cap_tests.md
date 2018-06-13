# Flux Capacitor Tests

Of course the flux capacitor library has a few tests to verify its behaviour.

In the next exercise we will use command [`add_executable`](https://cmake.org/cmake/help/v3.10/command/add_executable.html) to build a test executable for the flux capacitor library.

Because we want to run tests automatically on each build, we will use command [`add_custom_target`](https://cmake.org/cmake/help/v3.10/command/add_custom_target.html) to add a custom target that runs the flux capacitors tests.

**Example**:
```
add_executable(apple-tests ...)
add_custom_target(run-apple-tests ALL COMMAND apple-tests)

add_custom_target(run-all-tests DEPENDS run-apple-tests run-grape-tests)
```

## Exercise 4

From the source files in `flux_capacitor/tests` build an executable named `flux_capacitor-tests` with an alias `tests::flux_capacitor`.

The tests also check classes that are not part of the public interface of the flux capacitor.
So, the source folder of the flux capacitor library is an include dependency for the test.

The tests are depending on `time_machine::flux_capacitor`, the testing framework `catchorg::catch2` and of course `project::settings`.

Because an executable has no dependants, all dependencies should be *private*.

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
|    |    +--- capacitor.cc
|    |    +--- capacitor.h
|    |    +--- flux_capacitor.cc
|    |    +--- flux.cc
|    |    +--- flux.h
|    +--- tests/
|         +--- CMakeLists.txt
|         +--- capacitor.cc
|         +--- flux_capacitor.cc
|         +--- flux.cc
|
+--- vendor
|    +--- CMakeLists.txt
|    +--- catch2/
|         +--- CMakeLists.txt
|         +--- ...
+--- ...
```
:::

Then add a custom target named `run-flux_capacitor-tests` that runs the tests.

@[Run CMake]({"stubs": ["04_flux_cap_tests/stubs/flux_capacitor/CMakeLists.txt", "04_flux_cap_tests/stubs/flux_capacitor/tests/CMakeLists.txt"], "command": "04_flux_cap_tests/check.sh"})
