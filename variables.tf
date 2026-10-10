variable "api_gateway_documentation_parts" {
  description = <<EOT
Map of api_gateway_documentation_parts, attributes below
Required:
    - properties
    - rest_api_id
    - location (block):
        - method (optional)
        - name (optional)
        - path (optional)
        - status_code (optional)
        - type (required)
Optional:
    - region
EOT

  type = map(object({
    properties  = string
    rest_api_id = string
    region      = optional(string)
    location = object({
      method      = optional(string)
      name        = optional(string)
      path        = optional(string)
      status_code = optional(string)
      type        = string
    })
  }))
}

