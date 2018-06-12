#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

rm -rf ${DIR}/project
cp -r "${DIR}/stubs" "${DIR}/project"
cp -r "${DIR}/../project/sources/." "${DIR}/project/"
cp -r "${DIR}/../project/cmake/settings" "${DIR}/project/"
cp -r "${DIR}/../project/cmake/time_travel_interface" "${DIR}/project/"

echo -e "\n\ninclude(usage_check.cmake)\n" >> "${DIR}/project/CMakeLists.txt"
run_cmake ${DIR}/project


echo "TECHIO> success true"
