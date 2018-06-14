# [project]/project_helper.cmake

function(add_interface NAME)
  cmake_parse_arguments(IFACE "" "PACKAGE" "INCLUDES" ${ARGN})

  add_library(${NAME} INTERFACE)
  add_library(${IFACE_PACKAGE}::${NAME} ALIAS ${NAME})

  target_include_directories(${NAME} INTERFACE ${IFACE_INCLUDES})
endfunction(add_interface)

function(add_component NAME)
  cmake_parse_arguments(COMP "" "PACKAGE" "INCLUDES;SOURCES;SHARES" ${ARGN})

  add_library(${NAME} ${COMP_SOURCES})
  add_library(${COMP_PACKAGE}::${NAME} ALIAS ${NAME})

  if(DEFINED COMP_INCLUDES)
    target_include_directories(${NAME} PUBLIC ${COMP_INCLUDES})
  endif()

  if(DEFINED COMP_SHARES)
    target_link_libraries(${NAME} PUBLIC ${COMP_SHARES})
  endif()

  target_link_libraries(${NAME} PRIVATE project::settings)
endfunction(add_component)

function(add_application NAME)
  # ...
  #
  #
endfunction(add_application)
