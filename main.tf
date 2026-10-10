resource "aws_api_gateway_documentation_part" "api_gateway_documentation_parts" {
  for_each = var.api_gateway_documentation_parts

  properties  = each.value.properties
  rest_api_id = each.value.rest_api_id
  region      = each.value.region

  location {
    method      = each.value.location.method
    name        = each.value.location.name
    path        = each.value.location.path
    status_code = each.value.location.status_code
    type        = each.value.location.type
  }
}

