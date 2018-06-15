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
