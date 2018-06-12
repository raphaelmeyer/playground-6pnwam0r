#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

cd ${DIR}

# pre check with grep

cp -r "${DIR}/../project/sources/." "${DIR}/project/"

run_cmake ${DIR}

echo "TECHIO> success true"
