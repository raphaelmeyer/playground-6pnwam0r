if(NOT TARGET time_display)
  message(FATAL_ERROR "Target time_display is not defined.")
endif()

if(NOT TARGET time_machine::time_display)
  message(FATAL_ERROR "Alias target alias time_machine::time_display is not defined.")
endif()

if(NOT TARGET time_display-tests)
  message(FATAL_ERROR "Target time_display-tests is not defined.")
endif()

if(NOT TARGET tests::time_display)
  message(FATAL_ERROR "Alias target alias tests::time_display is not defined.")
endif()

if(NOT TARGET run-time_display-tests)
  message(FATAL_ERROR "Target run-time_display-tests is not defined.")
endif()
