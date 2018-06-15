# [project]/time_display/CMakeLists.txt

add_component(time_display PACKAGE time_machine
  SOURCES
    src/colors.cc
    src/display.cc
    src/numbers.cc
  INCLUDES include
  USING
    time_machine::time_travel
  TESTS
    tests/colors.cc
    tests/numbers.cc
    tests/time_display.cc
)
