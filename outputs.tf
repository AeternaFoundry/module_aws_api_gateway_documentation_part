output "api_gateway_documentation_parts_id" {
  description = "Map of id values across all api_gateway_documentation_parts, keyed the same as var.api_gateway_documentation_parts"
  value       = { for k, v in aws_api_gateway_documentation_part.api_gateway_documentation_parts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_gateway_documentation_parts_documentation_part_id" {
  description = "Map of documentation_part_id values across all api_gateway_documentation_parts, keyed the same as var.api_gateway_documentation_parts"
  value       = { for k, v in aws_api_gateway_documentation_part.api_gateway_documentation_parts : k => v.documentation_part_id if v.documentation_part_id != null && length(v.documentation_part_id) > 0 }
}
output "api_gateway_documentation_parts_location" {
  description = "Map of location values across all api_gateway_documentation_parts, keyed the same as var.api_gateway_documentation_parts"
  value       = { for k, v in aws_api_gateway_documentation_part.api_gateway_documentation_parts : k => one(v.location) if v.location != null && length(v.location) > 0 }
}
output "api_gateway_documentation_parts_properties" {
  description = "Map of properties values across all api_gateway_documentation_parts, keyed the same as var.api_gateway_documentation_parts"
  value       = { for k, v in aws_api_gateway_documentation_part.api_gateway_documentation_parts : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "api_gateway_documentation_parts_region" {
  description = "Map of region values across all api_gateway_documentation_parts, keyed the same as var.api_gateway_documentation_parts"
  value       = { for k, v in aws_api_gateway_documentation_part.api_gateway_documentation_parts : k => v.region if v.region != null && length(v.region) > 0 }
}
output "api_gateway_documentation_parts_rest_api_id" {
  description = "Map of rest_api_id values across all api_gateway_documentation_parts, keyed the same as var.api_gateway_documentation_parts"
  value       = { for k, v in aws_api_gateway_documentation_part.api_gateway_documentation_parts : k => v.rest_api_id if v.rest_api_id != null && length(v.rest_api_id) > 0 }
}

