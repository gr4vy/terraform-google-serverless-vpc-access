# Simple Serverless VPC Access Connector

This example creates a small VPC and a Serverless VPC Access Connector to that VPC within an exsiting project.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 3.45.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_serverless_vpc_access"></a> [serverless\_vpc\_access](#module\_serverless\_vpc\_access) | git::https://github.com/gr4vy/terraform-google-serverless-vpc-access.git | v1.0.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | git::https://github.com/terraform-google-modules/terraform-google-network.git | v3.1.2 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project in which to create the resources. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the resources. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Identifier for the connector with the format `projects/{{project}}/locations/{{region}}/connectors/{{name}}`. |
| <a name="output_name"></a> [name](#output\_name) | Name of the connector. |
<!-- END_TF_DOCS -->
