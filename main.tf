resource "oci_core_service_gateway" "core_service_gateways" {
  for_each = var.core_service_gateways

  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  route_table_id = each.value.route_table_id

  dynamic "services" {
    for_each = each.value.services
    content {
      service_id = services.value.service_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

