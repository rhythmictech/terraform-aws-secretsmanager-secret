# terraform aws secretsmanager secret
[![](https://github.com/rhythmictech/terraform-aws-secretsmanager-secret/workflows/format-and-lint/badge.svg)](https://github.com/rhythmictech/terraform-aws-secretsmanager-secret/actions)

Simple secret module for AWS secretsmanager

## Examples

### With a String
```hcl
module "secret" {
  source  = "rhythmictech/secretsmanager-secret/aws"
  version = "0.2.0"

  name  = "my-secret-string"
  value = var.my_secret_string

  tags = {
      encoding = "none"
      type     = "string"
  }
}
```

### With a file
```hcl
module "secret" {
  source  = "rhythmictech/secretsmanager-secret/aws"
  version = "0.2.0"

  name  = "my-secret-file-base64-encoded"
  value = base64encode(var.my_secret_file)

  tags = {
      encoding = "base64"
      type     = "file"
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | n/a | `string` | `"terraform-managed secret"` | no |
| kms\_key\_id | Optional. The KMS Key ID to encrypt the secret. KMS key arn or alias can be used. | `any` | `null` | no |
| name | Name of secret to store | `string` | n/a | yes |
| policy | Optional. The resource policy which controls access to the secret. | `any` | `null` | no |
| tags | User-Defined tags | `map(string)` | `{}` | no |
| value | Secret value to store | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | AWS SecretManager Secret ARN |
| id | AWS SecretManager Secret ARN |
| secret | AWS SecretManager Secret resource |
| secret\_version | AWS SecretManager Secret Version resource |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## The Giants underneath this module
- pre-commit.com/
- terraform.io/
- github.com/tfutils/tfenv
- github.com/segmentio/terraform-docs
