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

variable "min_throughput" {
  description = "Minimum throughput of the connector in 100 Mbps increments. Lowest possible value is 200."
  type        = number
  default     = 200

  validation {
    condition     = var.min_throughput >= 200 && var.min_throughput <= 1000 && var.min_throughput % 100 == 0
    error_message = "Minimum throughput of the connector must be between 200 Mbps and 1000 Mbps, in 100 Mbps increments."
  }
}

variable "max_throughput" {
  description = "Maximum throughput of the connector in 100 Mbps increments. Must be greater that `min_throughput`. Higest possible vaule is 1000."
  type        = number
  default     = 1000

  validation {
    condition     = var.max_throughput >= 200 && var.max_throughput <= 1000 && var.max_throughput % 100 == 0
    error_message = "Maximum throughput of the connector must be greater that `min_throughput` and less than 1000 Mbps, in 100 Mbps increments."
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
