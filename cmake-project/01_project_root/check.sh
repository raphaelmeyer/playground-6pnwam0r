#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

cd ${DIR}/project

if ! grep "cmake_minimum_required" CMakeLists.txt | grep -q -E "VERSION[[:space:]]*3.10" ; then
  fail 1 "Minimum requirement for CMake version 3.10 is missing."
fi

if ! grep "project" CMakeLists.txt | grep -q -E "TimeMachine" ; then
  fail 1 "Project \"TimeMachine\" is not defined."
fi

if ! grep "project" CMakeLists.txt | grep -q -E "VERSION[[:space:]]*1.0.2" ; then
  fail 1 "Project version is not set to 1.0.2."
fi

if ! grep "project" CMakeLists.txt | grep -q -E "LANGUAGES[[:space:]]*\\\"*CXX\\\"*" ; then
  fail 1 "Project language is not set to C++."
fi

run_cmake ${DIR}/project

echo "TECHIO> success true"
