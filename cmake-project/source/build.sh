#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "! /project > mkdir -p build"
mkdir -p ${DIR}/build

echo "! /project > cd build"
cd ${DIR}/build

echo "! /project/build > cmake -G Ninja .."
cmake -G Ninja .. | sed 's/^/    /'

echo "! /project/build > cd .."
cd ${DIR}

echo "! /project > cmake --build build"
cmake --build ${DIR}/build | sed 's/^/    /'

echo "TECHIO> success true"

