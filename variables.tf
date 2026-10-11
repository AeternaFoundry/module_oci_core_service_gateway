variable "core_service_gateways" {
  description = <<EOT
Map of core_service_gateways, attributes below
Required:
    - compartment_id
    - vcn_id
    - services (block):
        - service_id (required)
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - route_table_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    vcn_id         = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    route_table_id = optional(string)
    services = list(object({
      service_id = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_service_gateways : (
        length(v.services) >= 1
      )
    ])
    error_message = "Each services list must contain at least 1 items"
  }
}

