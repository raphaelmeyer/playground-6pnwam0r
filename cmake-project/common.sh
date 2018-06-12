#!/bin/bash

function fail {
  exit_code=$1
  message=$2
  echo "TECHIO> message --channel \"Hint!\" ${message}"
  echo "TECHIO> success false"
  exit ${exit_code}
}

function check_failure {
  exit_code=$1
  if [ ${exit_code} -ne 0 ]; then
    fail ${exit_code} "CMake build failed."
  fi
}

function run_cmake {
  project_dir=$1
  build_dir=${project_dir}/build_dir

  set -o pipefail

  echo "! $(pwd) > mkdir -p ${build_dir}"
  mkdir -p ${build_dir}

  echo "! $(pwd) > cd ${build_dir}"
  cd ${build_dir}

  echo "! $(pwd) > cmake -G Ninja ${project_dir}"
  cmake -G Ninja ${project_dir} | sed 's/^/    /'
  check_failure $?

  echo "! $(pwd) > cd ${project_dir}"
  cd ${project_dir}

  echo "! $(pwd) > cmake --build ${build_dir}"
  cmake --build ${build_dir} | sed 's/^/    /'
  check_failure $?
}
