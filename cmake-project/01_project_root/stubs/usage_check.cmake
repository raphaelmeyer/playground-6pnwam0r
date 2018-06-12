if(NOT "${PROJECT_NAME}" STREQUAL "TimeMachiner")
  message(FATAL_ERROR "\nTECHIO> message -c \"Hint!\" Project name should be TimeMachine")
endif()

if(NOT TimeMachine_VERSION VERSION_EQUAL 1.0.2)
  message(FATAL_ERROR "\nTECHIO> message -c \"Hint!\" Project version should be 1.0.2")
endif()
