#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

workspace=$1

terraform workspace select "$workspace" || terraform workspace new "$workspace"
