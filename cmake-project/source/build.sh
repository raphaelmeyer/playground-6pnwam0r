#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${DIR}/build
cd ${DIR}/build
cmake ..

cd ${DIR}
cmake --build ${DIR}/build

echo "TECHIO> success true"

