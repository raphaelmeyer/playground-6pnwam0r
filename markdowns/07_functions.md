# Functions

If you stick to certain rules how to structure your project then the CMake files can look very similar.
Like duplicated code.

Wouldn't it be nice if we could extract common code to [functions](https://cmake.org/cmake/help/v3.10/command/function.html)?

That's exactly what we are going to do in the last exercise.

## The CMake Language

But before we start, let's have a look at a few properties of the [CMake language](https://cmake.org/cmake/help/v3.10/manual/cmake-language.7.html).

All CMake [variables](https://cmake.org/cmake/help/v3.10/manual/cmake-language.7.html#cmake-language-variables) are stored as strings.
But in certain contexts, a string may be treated as a [list](https://cmake.org/cmake/help/v3.10/manual/cmake-language.7.html#lists).
Lists are basically strings divided into elements by splitting on `;` characters.
Variables are set with command [`set`](https://cmake.org/cmake/help/v3.10/command/set.html).

::: Examples:
```
set(WHO "John")
set(WHAT "Fruit")
set(${WHO}_${WHAT} "apple") # sets John_Fruit to "apple"
message(STATUS "${Who} wants an ${${WHO}_${WHAT}}") # John wants an apple

set(X a b "c;d" "e f") # X is "a;b;c;d;e f"
```
:::

One of the most important command for functions is [`cmake_parse_arguments`](https://cmake.org/cmake/help/v3.10/command/cmake_parse_arguments.html)

A full list of all commands can be found [`here`](https://cmake.org/cmake/help/v3.10/manual/cmake-commands.7.html).

## Exercise 7

Implement these functions, so that the CMake files can be written as follows:
- add_interface()
- add_component()
- add_application()

::: `[project]/time_machine/CMakeLists.txt`
```
# [project]/time_machine/CMakeLists.txt

add_application(time_machine_app PACKAGE time_machine
  SOURCES
    src/main.cc
  COMPONENTS
    time_machine::time_machine
)

add_component(time_machine PACKAGE time_machine
  SOURCES
    src/time_machine.cc
  INCLUDES include
  USING
    time_machine::flux_capacitor
    time_machine::time_display
  TESTS
    tests/time_machine.cc
)
```
:::

::: `[project]/flux_capacitor/CMakeLists.txt`
```
# [project]/flux_capacitor/CMakeLists.txt

add_component(flux_capacitor PACKAGE time_machine
  SOURCES
    src/capacitor.cc
    src/flux.cc
    src/flux_capacitor.cc
  INCLUDES include
  SHARING
    time_machine::time_travel
  TESTS
    tests/capacitor.cc
    tests/flux_capacitor.cc
    tests/flux.cc
)
```
:::

::: `[project]/time_travel_interface/CMakeLists.txt`
```
# [project]/time_travel_interface/CMakeLists.txt

add_interface(time_travel PACKAGE time_machine
  INCLUDES include
)
```
:::

@[Run CMake]({"stubs": ["07_functions/stubs/project_helper.cmake"], "command": "07_functions/check.sh"})
