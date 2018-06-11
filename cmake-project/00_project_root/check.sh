#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "! /project > mkdir -p /project/build"
mkdir -p ${DIR}/build

echo "! /project > cd /project/build"
cd ${DIR}/build

echo "! /project/build > cmake -G Ninja /project"
cmake -G Ninja ${DIR} | sed 's/^/    /'

echo "! /project/build > cd /project"
cd ${DIR}

echo "! /project > cmake --build /project/build"
cmake --build ${DIR}/build | sed 's/^/    /'

echo "TECHIO> success true"
