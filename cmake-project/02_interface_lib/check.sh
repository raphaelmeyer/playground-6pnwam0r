#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

cd ${DIR}/project

if ! grep "add_subdirectory" CMakeLists.txt | grep -q -E "time_travel_interface" ; then
  fail 1 "Folder time_travel_interface is not added to the project."
fi

cp -r "${DIR}/../project/sources/." "${DIR}/project/"

run_cmake ${DIR}/project

echo "TECHIO> success true"
