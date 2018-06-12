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
}
