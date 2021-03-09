output "name" {
  description = "Name of the connector."
  value       = module.serverless_vpc_access.name
}

output "id" {
  description = "Identifier for the connector with the format `projects/{{project}}/locations/{{region}}/connectors/{{name}}`."
  value       = module.serverless_vpc_access.id
}
