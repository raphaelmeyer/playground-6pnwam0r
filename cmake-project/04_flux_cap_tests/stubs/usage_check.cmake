if(NOT TARGET flux_capacitor-tests)
  message(FATAL_ERROR "Target flux_capacitor-tests is not defined.")
endif()

if(NOT TARGET tests::flux_capacitor)
  message(FATAL_ERROR "Alias target alias tests::flux_capacitor is not defined.")
endif()

if(NOT TARGET run-flux_capacitor-tests)
  message(FATAL_ERROR "Target run-flux_capacitor-tests is not defined.")
endif()
