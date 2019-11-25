# terraform-module-azurerm-networksecuritygroup
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| location | Location of where the NSGs will live in. Needs to be same as virtual network. | string | `""` | no |
| network\_security\_groups\_config | Object containing deployment information for subnets. | any | n/a | yes |
| resource\_group\_name | Name of the resource group where the vnet is hosted. | string | n/a | yes |
| subnets\_config | Object containing deployment information for subnets. | any | n/a | yes |
| subnets\_ids\_map | Map of the names and ids of the created subnets. | map | n/a | yes |
| tags | Tags to add to the virtual network. | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_security\_group\_ids |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
