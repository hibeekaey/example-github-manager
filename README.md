# GitHub Manager

Repository for managing GitHub with Terraform

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.2.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_repository"></a> [repository](#module\_repository) | ./modules/repository | n/a |
| <a name="module_repository_default_branch"></a> [repository\_default\_branch](#module\_repository\_default\_branch) | ./modules/branch | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repositories"></a> [repositories](#input\_repositories) | GitHub repositories | <pre>map(object({<br>    name               = string<br>    description        = string<br>    visibility         = string<br>    archived           = bool<br>    archive_on_destroy = optional(bool)<br>  }))</pre> | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | GitHub personal access token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repositories"></a> [repositories](#output\_repositories) | GitHub repositories |
<!-- END_TF_DOCS -->
