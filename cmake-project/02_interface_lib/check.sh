#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

rm -rf ${DIR}/project
cp -r "${DIR}/stubs" "${DIR}/project"


cd ${DIR}/project

if ! grep -q "add_subdirectory" CMakeLists.txt ; then
  fail 1 "Add folder time_travel_interface to the project."
fi


cp -r "${DIR}/../project/sources/." "${DIR}/project/"

echo -e "\n\ninclude(usage_check.cmake)\n" >> "${DIR}/project/CMakeLists.txt"
run_cmake ${DIR}/project


echo "TECHIO> success true"
