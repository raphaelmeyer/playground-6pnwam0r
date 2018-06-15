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
