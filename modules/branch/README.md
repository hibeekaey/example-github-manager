<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.this](https://registry.terraform.io/providers/integrations/github/6.2.1/docs/resources/branch) | resource |
| [github_branch_default.this](https://registry.terraform.io/providers/integrations/github/6.2.1/docs/resources/branch_default) | resource |
| [github_branch_protection.this](https://registry.terraform.io/providers/integrations/github/6.2.1/docs/resources/branch_protection) | resource |
| [github_user.this](https://registry.terraform.io/providers/integrations/github/6.2.1/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | GitHub repository branch name | `string` | `"main"` | no |
| <a name="input_repository_archived"></a> [repository\_archived](#input\_repository\_archived) | GitHub repository archived | `bool` | n/a | yes |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | GitHub repository name | `string` | n/a | yes |
| <a name="input_repository_visibility"></a> [repository\_visibility](#input\_repository\_visibility) | GitHub repository visibility | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | GitHub username | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ref"></a> [ref](#output\_ref) | GitHub repository branch ref |
<!-- END_TF_DOCS -->