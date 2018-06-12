#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/../common.sh"

set -o pipefail

run_cmake

echo "TECHIO> success true"
