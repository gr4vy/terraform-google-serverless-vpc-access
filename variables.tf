variable "project_id" {
  description = "The ID of the project in which to create the resources. If this is not provided, the provider project is used."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "us-central1"
}

variable "name" {
  description = "Name of the Serverless VPC Access Connector (Max 25 characters)."
  type        = string

  validation {
    condition     = length(var.name) >= 1 && length(var.name) <= 25
    error_message = "The name value must be a maximum of 25 characters."
  }
}

variable "network" {
  description = "Name of the VPC to connect to."
  type        = string
  default     = "default"
}

variable "ip_cidr_range" {
  description = "CIDR `/28` range of internal addresses (following RFC 4632 notation) for the connector to use."
  type        = string
  default     = "10.8.0.0/28"
}

variable "machine_type" {
  description = "Machine type of VM Instance underlying connector."
  type        = string
  default     = "e2-micro"
}

variable "min_instances" {
  description = "Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be lower than the value specified by max_instances."
  type        = number
  default     = "2"

  validation {
    condition     = var.min_instances >= 2 && var.min_instances <= 9
    error_message = "Value must be between 2 and 9, inclusive. Must be lower than the value specified by max_instances."
  }
}

variable "max_instances" {
  description = "Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be higher than the value specified by min_instances."
  type        = number
  default     = "10"

  validation {
    condition     = var.max_instances >= 3 && var.max_instances <= 10
    error_message = "Value must be between 3 and 10, inclusive. Must be higher than the value specified by min_instances."
  }
}

variable "timeouts" {
  description = "Terraform resource management timeouts."
  type        = map(string)
  default = {
    create = "6m"
    delete = "10m"
  }
}
