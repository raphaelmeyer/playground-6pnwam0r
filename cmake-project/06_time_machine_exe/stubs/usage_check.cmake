if(NOT TARGET time_machine)
  message(FATAL_ERROR "Target time_machine is not defined.")
endif()

if(NOT TARGET time_machine::time_machine)
  message(FATAL_ERROR "Alias target alias time_machine::time_machine is not defined.")
endif()

if(NOT TARGET time_machine_app)
  message(FATAL_ERROR "Target time_machine_app is not defined.")
endif()

if(NOT TARGET time_machine::application)
  message(FATAL_ERROR "Alias target alias time_machine::application is not defined.")
endif()

if(NOT TARGET time_machine-tests)
  message(FATAL_ERROR "Target time_machine-tests is not defined.")
endif()

if(NOT TARGET tests::time_machine)
  message(FATAL_ERROR "Alias target alias tests::time_machine is not defined.")
endif()

if(NOT TARGET run-time_machine-tests)
  message(FATAL_ERROR "Target run-time_machine-tests is not defined.")
endif()
