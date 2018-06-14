#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

rm -rf ${DIR}/project
cp -r "${DIR}/stubs" "${DIR}/project"
cp -r "${DIR}/../project/sources/." "${DIR}/project/"
cp -r "${DIR}/../project/cmake/settings" "${DIR}/project/"
cp -r "${DIR}/../project/cmake/vendor" "${DIR}/project/"


run_cmake ${DIR}/project

cd ${DIR}/project
out=$(cmake --build ${DIR}/project/build --target run-flux_capacitor-tests 2>&1)
if [[ ! "${out}" =~ "All tests passed (5 assertions in 3 test cases)" ]] ; then
  fail 1 "No or not all flux capacitor tests ran."
fi

cd ${DIR}/project
out=$(cmake --build ${DIR}/project/build --target run-time_display-tests 2>&1)
if [[ ! "${out}" =~ "All tests passed (7 assertions in 5 test cases)" ]] ; then
  fail 1 "No or not all time display tests ran."
fi

cd ${DIR}/project
out=$(cmake --build ${DIR}/project/build --target run-time_machine-tests 2>&1)
if [[ ! "${out}" =~ "All tests passed (1 assertion in 1 test case)" ]] ; then
  fail 1 "No or not all time machine tests ran."
fi

cd ${DIR}/project
out=$(${DIR}/project/build/time_machine/time_machine_app 2>&1)
if [[ ! "${out}" =~ "whoooosh!" ]] ; then
  fail 1 "Time machine application does not run."
fi


echo "TECHIO> success true"
