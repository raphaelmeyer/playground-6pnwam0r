# [project]/project_helper.cmake

# add_interface(<name> PACKAGE <package>
#   [INCLUDES include...]
# )
#
function(add_interface NAME)
  cmake_parse_arguments(IFACE "" "PACKAGE" "INCLUDES" ${ARGN})

  add_library(${NAME} INTERFACE)
  add_library(${IFACE_PACKAGE}::${NAME} ALIAS ${NAME})

  target_include_directories(${NAME} INTERFACE ${IFACE_INCLUDES})
endfunction(add_interface)

# add_component(<name> PACKAGE <package>
#   SOURCES source...
#   [INCLUDES include...]
#   [USING dependency...]
#   [SHARING dependency...]
#   [TESTS test...]
# )
#
function(add_component NAME)
  cmake_parse_arguments(COMP "" "PACKAGE" "INCLUDES;SOURCES;TESTS;USING;SHARING" ${ARGN})

  add_library(${NAME} ${COMP_SOURCES})
  add_library(${COMP_PACKAGE}::${NAME} ALIAS ${NAME})

  if(DEFINED COMP_INCLUDES)
    target_include_directories(${NAME} PUBLIC ${COMP_INCLUDES})
  endif()

  if(DEFINED COMP_SHARING)
    target_link_libraries(${NAME} PUBLIC ${COMP_SHARING})
  endif()

  if(DEFINED COMP_USING)
    target_link_libraries(${NAME} PRIVATE ${COMP_USING})
  endif()

  if(DEFINED COMP_TESTS)
    add_executable(${NAME}-tests ${COMP_TESTS})
    add_executable(tests::${NAME} ALIAS ${NAME}-tests)

    add_custom_target(run-${NAME}-tests ALL COMMAND tests::${NAME})

    target_link_libraries(${NAME}-tests
      PRIVATE
        ${COMP_PACKAGE}::${NAME}
        ${COMP_USING}
        project::settings
        catchorg::catch2
    )
    target_include_directories(${NAME}-tests PRIVATE src)
  endif()

  target_link_libraries(${NAME} PRIVATE project::settings)
endfunction(add_component)

# add_application(<name> PACKAGE <package>
#   SOURCES source...
#   [COMPONENTS component...]
# )
#
function(add_application NAME)
  cmake_parse_arguments(APP "" "PACKAGE" "SOURCES;COMPONENTS" ${ARGN})

  add_executable(${NAME} ${APP_SOURCES})
  add_executable(${APP_PACKAGE}::${NAME} ALIAS ${NAME})

  if(DEFINED APP_COMPONENTS)
    target_link_libraries(${NAME}
      PRIVATE
        ${APP_COMPONENTS}
        project::settings
    )
  endif()
endfunction(add_application)
