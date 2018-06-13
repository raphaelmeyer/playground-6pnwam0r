# Functions

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

## Exercise N

Write functions:
- add_interface()
- add_component()
- add_application()
