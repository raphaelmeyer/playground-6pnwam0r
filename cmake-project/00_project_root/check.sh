#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "! $(pwd) > mkdir -p ${DIR}/build"
mkdir -p ${DIR}/build

echo "! $(pwd) > cd ${DIR}/build"
cd ${DIR}/build

echo "! $(pwd) > cmake -G Ninja ${DIR}"
cmake -G Ninja ${DIR} | sed 's/^/    /'

echo "! $(pwd) > cd ${DIR}"
cd ${DIR}

echo "! $(pwd) > cmake --build ${DIR}/build"
cmake --build ${DIR}/build | sed 's/^/    /'

echo "TECHIO> success true"
