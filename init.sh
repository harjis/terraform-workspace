#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

key="joonash/workspaces/terraform.tfstate"

resource_group_name="rg-data-platform-dev-tf-state"
storage_account_name="stdataplatformdevstates"
container_name="stc-data-platform-dev-tf-states"

terraform init \
  -input=false \
  -backend-config="resource_group_name=$resource_group_name" \
  -backend-config="storage_account_name=$storage_account_name" \
  -backend-config="container_name=$container_name" \
  -backend-config="key=$key"
