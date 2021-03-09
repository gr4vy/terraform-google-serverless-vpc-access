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

output "min_throughput" {
  description = "Minimum throughput of the connector in Mbps."
  value       = google_vpc_access_connector.this.min_throughput
}

output "max_throughput" {
  description = "Maximum throughput of the connector in Mbps."
  value       = google_vpc_access_connector.this.max_throughput
}
