#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -o pipefail

echo "! $(pwd) > mkdir -p ${DIR}/build"
mkdir -p ${DIR}/build

echo "! $(pwd) > cd ${DIR}/build"
cd ${DIR}/build

echo "! $(pwd) > cmake -G Ninja ${DIR}"
cmake -G Ninja ${DIR} | sed 's/^/    /'
if [ $? -ne 0 ]; then
  echo "TECHIO> success false"
fi

echo "! $(pwd) > cd ${DIR}"
cd ${DIR}

echo "! $(pwd) > cmake --build ${DIR}/build"
cmake --build ${DIR}/build | sed 's/^/    /'
if [ $? -ne 0 ]; then
  echo "TECHIO> success false"
fi

echo "TECHIO> success true"
