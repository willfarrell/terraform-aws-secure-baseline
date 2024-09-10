# athena-baseline

## Features

- Set default workgroup to have CloudWatch Metrics enabled

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.3 |

There is no terraform resource for the default `primary` workgroup. You will need to run an import before use.
```bash
terraform import "module.security.module.athena_baseline_us-east-1[0].aws_athena_workgroup.default" primary
terraform import "module.security.module.athena_baseline_ca-central-1[0].aws_athena_workgroup.default" primary
terraform import "module.security.module.athena_baseline_ca-west-1[0].aws_athena_workgroup.default" primary
# ... other regions
```

If just using this to update Athena, you can remove afterwards
```bach
terraform state rm "module.security.module.athena_baseline_us-east-1[0].aws_athena_workgroup.default"
terraform state rm "module.security.module.athena_baseline_ca-central-1[0].aws_athena_workgroup.default"
terraform state rm "module.security.module.athena_baseline_ca-west-1[0].aws_athena_workgroup.default"
```
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.3 |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|

## Outputs

| Name | Description |
|------|-------------|
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
