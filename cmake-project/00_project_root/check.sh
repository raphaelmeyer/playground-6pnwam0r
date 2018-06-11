#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function check_failure {
  exit_code=$1
  if [ ${exit_code} -ne 0 ]; then
    echo "TECHIO> success false"
    exit ${exit_code}
  fi
}

set -o pipefail

echo "! $(pwd) > mkdir -p ${DIR}/build"
mkdir -p ${DIR}/build

echo "! $(pwd) > cd ${DIR}/build"
cd ${DIR}/build

echo "! $(pwd) > cmake -G Ninja ${DIR}"
cmake -G Ninja ${DIR} | sed 's/^/    /'
check_failure $?

echo "! $(pwd) > cd ${DIR}"
cd ${DIR}

echo "! $(pwd) > cmake --build ${DIR}/build"
cmake --build ${DIR}/build | sed 's/^/    /'
check_failure $?

echo "TECHIO> success true"

echo "TECHIO> terminal"
