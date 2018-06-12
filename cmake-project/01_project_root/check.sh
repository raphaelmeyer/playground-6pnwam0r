#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

rm -rf ${DIR}/project
cp -r "${DIR}/stubs" "${DIR}/project"


cd ${DIR}/project

if ! grep -q "cmake_minimum_required" CMakeLists.txt ; then
  fail 1 "Minimum version requirement for CMake is missing."
fi

if ! grep -q -E "VERSION[[:space:]]*3.10" CMakeLists.txt ; then
  fail 1 "Minimum version requirement for CMake should be 3.10."
fi

if ! grep -q "project" CMakeLists.txt ; then
  fail 1 "Project is not defined."
fi

if ! grep -q -E "LANGUAGES[[:space:]]*\\\"*CXX\\\"*" CMakeLists.txt ; then
  fail 1 "Project language should be set to C++."
fi


echo -e "\n\ninclude(usage_check.cmake)\n" >> "${DIR}/project/CMakeLists.txt"
run_cmake ${DIR}/project


echo "TECHIO> success true"
