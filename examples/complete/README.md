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
| <a name="module_manager"></a> [manager](#module\_manager) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repositories"></a> [repositories](#input\_repositories) | GitHub repositories | <pre>map(object({<br>    name               = string<br>    description        = string<br>    visibility         = string<br>    archived           = bool<br>    archive_on_destroy = optional(bool)<br>  }))</pre> | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | GitHub personal access token | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | GitHub username | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repositories"></a> [repositories](#output\_repositories) | GitHub repositories |
<!-- END_TF_DOCS -->