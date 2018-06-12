# [project]/vendor/catch2/CMakeLists.txt

add_library(catch2 INTERFACE)
add_library(catchorg::catch2 ALIAS catch2)

target_include_directories(catch2 INTERFACE include)
