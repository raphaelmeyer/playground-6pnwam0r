#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

set -o pipefail

run_cmake

cd ${DIR}

if ! grep "cmake_minimum_required" CMakeLists.txt | grep -q -E "VERSION[[:space:]]*3.10" ; then
  fail 1 "Required minimum CMake version 3.10 is missing."
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

echo "TECHIO> success true"
