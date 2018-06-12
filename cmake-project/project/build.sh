#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

project_dir="${DIR}/project"
build_dir="${project_dir}/build"

cp -r "${DIR}/sources/." "${project_dir}/"
cp -r "${DIR}/cmake/." "${project_dir}/"

mkdir -p "${build_dir}"
cd "${build_dir}"

cmake -G Ninja "${project_dir}"

cd "${project_dir}"

cmake --build "${build_dir}"
