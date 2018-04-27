add_library(flux_capacitor
  src/flux_capacitor.cc
  src/flux.cc
  src/capacitor.cc
)

add_library(time_machine::flux_capacitor ALIAS flux_capacitor)

target_link_libraries(flux_capacitor
  PUBLIC time_machine::time_travel
)

add_subdirectory(tests)

