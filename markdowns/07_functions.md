# Functions

If you stick to certain rules how to structure your project then the CMake files can look very similar.
Like duplicated code.

Wouldn't it be nice if we could extract functions?

[`function`](https://cmake.org/cmake/help/v3.10/command/function.html)


explain variables, scope ?
string, lists, variables
set

cmake_parse_arguments
https://cmake.org/cmake/help/v3.10/command/cmake_parse_arguments.html


https://cmake.org/cmake/help/v3.10/command/foreach.html

https://cmake.org/cmake/help/v3.10/command/set.html

https://cmake.org/cmake/help/v3.10/manual/cmake-language.7.html#cmake-language-variables
https://cmake.org/cmake/help/v3.10/manual/cmake-language.7.html#lists



```
include(project_helper.cmake)

add_interface(time_travel PACKAGE time_machine
  INCLUDES include
)

add_component(flux_capacitor PACKAGE time_machine
  SOURCES src/capacitor.cc src/flux.cc src/flux_capacitor.cc
  INCLUDES include
  SHARES time_machine::time_travel
  # USES private link dep
  # RECOMMENDS interface link dep
  TESTS tests/capacitor.cc tests/flux.cc ..
)

add_application(time_machine_app PACKAGE time_machine
  ....
)
```

## Exercise 7

Write functions:
- add_interface()
- add_component()
- add_application()
