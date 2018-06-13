# [project]/flux_capacitor/tests/CMakeLists.txt

add_executable(flux_capacitor-tests
  flux_capacitor.cc
  flux.cc
  capacitor.cc
)
add_executable(tests::flux_capacitor ALIAS flux_capacitor-tests)

target_link_libraries(flux_capacitor-tests
  PRIVATE
    catchorg::catch2
    time_machine::flux_capacitor
    project::settings
)

target_include_directories(flux_capacitor-tests
  PRIVATE ../src
)

add_custom_target(run-flux_capacitor-tests ALL
  COMMAND tests::flux_capacitor
)
