# Solution Exercise 4

Sample solution to the exercise:
```
# [project]/flux_capacitor/CMakeLists.txt

# ...

add_subdirectory(tests)
```

```
# [project]/flux_capacitor/tests/CMakeLists.txt

add_executable(flux_capacitor-tests
  flux_capacitor.cc
  flux.cc
  capacitor.cc
)
add_executable(tests::flux_capacitor ALIAS flux_capacitor-tests)

target_link_libraries(flux_capacitor-tests
  PRIVATE
    catchorg::catch2
    time_machine::flux_capacitor
    project::settings
)

target_include_directories(flux_capacitor-tests
  PRIVATE ../src
)

add_custom_target(run-flux_capacitor-tests ALL
  COMMAND tests::flux_capacitor
)
```

## ctest

CMake itselfs also provides an infrastructure to add tests to project.
There are the commands [`add_test`](https://cmake.org/cmake/help/v3.10/command/add_test.html) and [`enable_testing`](https://cmake.org/cmake/help/v3.10/command/enable_testing.html) for adding tests to a project.
And there is also a CMake test driver program called [`ctest`](https://cmake.org/cmake/help/v3.10/manual/ctest.1.html).

Depending on your project structure, IDE integration and requirements when you want to run your test, the usage of `ctest` can be helpful.
