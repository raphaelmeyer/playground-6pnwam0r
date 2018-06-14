# [project]/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project("TimeMachine" VERSION 1.0.2 LANGUAGES CXX)

include(project_helper.cmake)

add_subdirectory(vendor)
add_subdirectory(settings)

add_subdirectory(time_travel_interface)
add_subdirectory(flux_capacitor)
add_subdirectory(time_display)
add_subdirectory(time_machine)
