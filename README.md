# terraform-google-serverless-vpc-access
Terraform module to configure Google Cloud Serverless VPC Access

## Usage

```hcl
module "serverless_vpc_access" {
  source = "git::https://github.com/gr4vy/terraform-google-serverless-vpc-access.git?ref=v1.0.0"

  name          = "serverless-access"
  network       = "default"
  ip_cidr_range = "10.132.0.0/28"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| google | >= 3.11.0 |

## Providers

| Name | Version |
|------|---------|
| google | >= 3.11.0 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [google_client_config](https://registry.terraform.io/providers/hashicorp/google/3.11.0/docs/data-sources/client_config) |
| [google_project_service](https://registry.terraform.io/providers/hashicorp/google/3.11.0/docs/resources/project_service) |
| [google_vpc_access_connector](https://registry.terraform.io/providers/hashicorp/google/3.11.0/docs/resources/vpc_access_connector) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ip\_cidr\_range | CIDR `/28` range of internal addresses (following RFC 4632 notation) for the connector to use. | `string` | `"10.8.0.0/28"` | no |
| max\_throughput | Maximum throughput of the connector in 100 Mbps increments (Higest possible vaule is 1000). | `number` | `1000` | no |
| min\_throughput | Minimum throughput of the connector in 100 Mbps increments (Lowest possible value is 200). | `number` | `200` | no |
| name | Name of the Serverless VPC Access Connector (Max 25 characters). | `string` | n/a | yes |
| network | Name of the VPC to connect to. | `string` | `"default"` | no |
| project\_id | The ID of the project in which to create the resources. If this is not provided, the provider project is used. | `string` | `""` | no |
| region | The region in which to create the resources. | `string` | `"us-central1"` | no |
| timeouts | Terraform resource management timeouts. | `map(string)` | <pre>{<br>  "create": "6m",<br>  "delete": "10m"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| id | Identifier for the connector with the format `projects/{{project}}/locations/{{region}}/connectors/{{name}}`. |
| ip\_cidr\_range | The CIDR range of internal IP addresses the connector uses. |
| max\_throughput | Maximum throughput of the connector in Mbps. |
| min\_throughput | Minimum throughput of the connector in Mbps. |
| name | Name of the connector. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
