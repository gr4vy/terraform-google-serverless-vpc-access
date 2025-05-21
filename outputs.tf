output "name" {
  description = "Name of the connector."
  value       = google_vpc_access_connector.this.name
}

output "id" {
  description = "Identifier for the connector with the format `projects/{{project}}/locations/{{region}}/connectors/{{name}}`."
  value       = google_vpc_access_connector.this.id
}

output "ip_cidr_range" {
  description = "The CIDR range of internal IP addresses the connector uses."
  value       = google_vpc_access_connector.this.ip_cidr_range
}

output "machine_type" {
  description = "Machine type of VM Instance underlying connector."
  value       = google_vpc_access_connector.this.machine_type
}

output "min_instances" {
  description = "Minimum number of VM instances in autoscaling group underlying the connector."
  value       = google_vpc_access_connector.this.min_instances
}

output "max_instances" {
  description = "Maximum number of VM instances in autoscaling group underlying the connector."
  value       = google_vpc_access_connector.this.max_instances
}
