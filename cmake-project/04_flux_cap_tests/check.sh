#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

rm -rf ${DIR}/project
cp -r "${DIR}/stubs" "${DIR}/project"
cp -r "${DIR}/../project/sources/." "${DIR}/project/"
cp -r "${DIR}/../project/cmake/settings" "${DIR}/project/"
cp -r "${DIR}/../project/cmake/vendor" "${DIR}/project/"
cp -r "${DIR}/../project/cmake/time_travel_interface" "${DIR}/project/"


cd ${DIR}/project

if ! grep -q "add_subidrectory" flux_capacitor/CMakeLists.txt ; then
  fail 1 "Did you add sub-folder tests to the project?"
fi


echo -e "\n\ninclude(usage_check.cmake)\n" >> "${DIR}/project/CMakeLists.txt"
run_cmake ${DIR}/project


cd ${DIR}/project
out=$(cmake --build {DIR}/project/build --target run-flux_capacitor-tests 2>&1)
if [[ ! "${out}" =~ "All tests passed (5 assertions in 3 test cases)" ]] ; then
  fail 1 "Test were not run."
fi


echo "TECHIO> success true"
