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

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_service.servicenetworking](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_project_service.vpcaccess](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_vpc_access_connector.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector) | resource |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_cidr_range"></a> [ip\_cidr\_range](#input\_ip\_cidr\_range) | CIDR `/28` range of internal addresses (following RFC 4632 notation) for the connector to use. | `string` | `"10.8.0.0/28"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | Machine type of VM Instance underlying connector. | `string` | `"e2-micro"` | no |
| <a name="input_max_instances"></a> [max\_instances](#input\_max\_instances) | Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be higher than the value specified by min\_instances. | `number` | `"10"` | no |
| <a name="input_min_instances"></a> [min\_instances](#input\_min\_instances) | Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be lower than the value specified by max\_instances. | `number` | `"2"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Serverless VPC Access Connector (Max 25 characters). | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Name of the VPC to connect to. | `string` | `"default"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project in which to create the resources. If this is not provided, the provider project is used. | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the resources. | `string` | `"us-central1"` | no |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Terraform resource management timeouts. | `map(string)` | <pre>{<br/>  "create": "6m",<br/>  "delete": "10m"<br/>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Identifier for the connector with the format `projects/{{project}}/locations/{{region}}/connectors/{{name}}`. |
| <a name="output_ip_cidr_range"></a> [ip\_cidr\_range](#output\_ip\_cidr\_range) | The CIDR range of internal IP addresses the connector uses. |
| <a name="output_machine_type"></a> [machine\_type](#output\_machine\_type) | Machine type of VM Instance underlying connector. |
| <a name="output_max_instances"></a> [max\_instances](#output\_max\_instances) | Maximum number of VM instances in autoscaling group underlying the connector. |
| <a name="output_min_instances"></a> [min\_instances](#output\_min\_instances) | Minimum number of VM instances in autoscaling group underlying the connector. |
| <a name="output_name"></a> [name](#output\_name) | Name of the connector. |
<!-- END_TF_DOCS -->
