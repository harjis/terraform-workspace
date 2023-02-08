# How to run

Setup ARM_*

```bash
export ARM_CLIENT_ID='a'
export ARM_CLIENT_SECRET='a'
export ARM_TENANT_ID='a'
export ARM_SUBSCRIPTION_ID='a'
```

Init:

```bash

./init.sh
```

Create / Use workspace:

```bash
./workspace.sh test
```

Plan & apply (-out omitted in favor of typing less):

```bash
terraform plan
terraform apply
```

Crate new workspace:

```bash
./workspace.sh test2

terraform plan
terraform apply
```

Switching between workspaces can be achieved by running `./workspace.sh` -script
