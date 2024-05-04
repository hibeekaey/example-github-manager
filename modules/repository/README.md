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
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/6.2.1/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_archive_on_destroy"></a> [archive\_on\_destroy](#input\_archive\_on\_destroy) | GitHub repository archive on destroy | `bool` | `true` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | GitHub repository archived | `bool` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | GitHub repository description | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | GitHub repository name | `string` | n/a | yes |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | GitHub repository visibility | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_archived"></a> [archived](#output\_archived) | GitHub repository archived |
| <a name="output_name"></a> [name](#output\_name) | GitHub repository name |
| <a name="output_url"></a> [url](#output\_url) | GitHub repository URL |
| <a name="output_visibility"></a> [visibility](#output\_visibility) | GitHub repository visibility |
<!-- END_TF_DOCS -->