# Solution Exercise 4

solution goes here:
```
some cmake code ....
```

## ctest

CMake itselfs also provides an infrastructure to add tests to project.
There are the commands [`add_test`](https://cmake.org/cmake/help/v3.10/command/add_test.html) and [`enable_testing`](https://cmake.org/cmake/help/v3.10/command/enable_testing.html) for adding tests to a project.
And there is also a CMake test driver program called [`ctest`](https://cmake.org/cmake/help/v3.10/manual/ctest.1.html).

Depending on your project structure, IDE integration and requirements when you want to run your test, the usage of `ctest` can be helpful.
