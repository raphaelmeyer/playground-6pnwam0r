if(NOT TARGET flux_capacitor)
  message(FATAL_ERROR "Target flux_capacitor is not defined.")
endif()

if(NOT TARGET time_machine::flux_capacitor)
  message(FATAL_ERROR "Alias target alias time_machine::flux_capacitor is not defined.")
endif()
