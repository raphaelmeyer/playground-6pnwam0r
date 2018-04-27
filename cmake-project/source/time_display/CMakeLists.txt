add_library(time_display
  src/display.cc
  src/numbers.cc
  src/colors.cc
)

add_library(time_machine::time_display ALIAS time_display)

target_link_libraries(time_display
  PRIVATE
    time_machine::time_travel
)

target_include_directories(time_display
  PUBLIC include
)

