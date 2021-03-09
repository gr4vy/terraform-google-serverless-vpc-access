# Simple Serverless VPC Access Connector

This example creates a small VPC and a Serverless VPC Access Connector to that VPC within an exsiting project.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| google | ~> 3.45.0 |

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| serverless_vpc_access | git::https://github.com/gr4vy/terraform-google-serverless-vpc-access.git?ref=v1.0.0 |  |
| vpc | git::https://github.com/terraform-google-modules/terraform-google-network.git?ref=v3.1.2 |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project\_id | The ID of the project in which to create the resources. | `string` | n/a | yes |
| region | The region in which to create the resources. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | Identifier for the connector with the format `projects/{{project}}/locations/{{region}}/connectors/{{name}}`. |
| name | Name of the connector. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
