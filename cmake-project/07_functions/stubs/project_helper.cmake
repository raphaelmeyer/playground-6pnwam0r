# [project]/project_helper.cmake

# add_interface(<name> PACKAGE <package>
#   [INCLUDES include...]
# )
#
function(add_interface NAME)
  cmake_parse_arguments(IFACE "" "PACKAGE" "INCLUDES" ${ARGN})
  # ...
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
  # cmake_parse_arguments(COMP ...)
  # ...
endfunction(add_component)

# add_application(<name> PACKAGE <package>
#   SOURCES source...
#   [COMPONENTS component...]
# )
#
function(add_application NAME)
  # ...
endfunction(add_application)
