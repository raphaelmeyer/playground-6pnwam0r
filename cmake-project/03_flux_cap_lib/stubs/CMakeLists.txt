# [project]/CMakeLists.txt

cmake_minimum_required(VERSION 3.10)
project("TimeMachine" VERSION 1.0.2 LANGUAGES CXX)

add_subdirectory(time_travel_interface)
add_subdirectory(settings)
