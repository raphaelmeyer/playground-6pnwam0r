#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

rm -rf ${DIR}/project
cp -r "${DIR}/stubs" "${DIR}/project"
cp -r "${DIR}/../project/sources/." "${DIR}/project/"
cp -r "${DIR}/../project/cmake/settings" "${DIR}/project/"
cp -r "${DIR}/../project/cmake/vendor" "${DIR}/project/"
cp -r "${DIR}/../project/cmake/time_travel_interface" "${DIR}/project/"

echo -e "\n\ninclude(usage_check.cmake)\n" >> "${DIR}/project/CMakeLists.txt"
run_cmake ${DIR}/project


cd ${DIR}/project
out=$(cmake --build ${DIR}/project/build --target run-time_display-tests 2>&1)
if [[ ! "${out}" =~ "All tests passed (7 assertions in 5 test cases)" ]] ; then
  fail 1 "No or not all tests were not run."
fi


echo "TECHIO> success true"
