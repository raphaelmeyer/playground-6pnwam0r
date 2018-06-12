add_library(usage_check_1 usage_check.cc)
target_link_libraries(usage_check_1
  PRIVATE
    time_machine::flux_capacitor
    project::settings
)
