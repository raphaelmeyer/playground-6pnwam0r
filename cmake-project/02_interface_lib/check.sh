#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

cd ${DIR}/project

if ! grep -q "add_subdirectory" CMakeLists.txt ; then
  fail 1 "Add folder time_travel_interface to the project."
fi

if ! grep -q "time_travel_interface" ; then
  fail 1 "Add folder time_travel_interface to the project."
fi


cp -r "${DIR}/../project/sources/." "${DIR}/project/"

run_cmake ${DIR}/project

echo "TECHIO> success true"
