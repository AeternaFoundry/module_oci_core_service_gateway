output "core_service_gateways_id" {
  description = "Map of id values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no id are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_service_gateways_block_traffic" {
  description = "Map of block_traffic values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no block_traffic are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.block_traffic if v.block_traffic != null }
}
output "core_service_gateways_compartment_id" {
  description = "Map of compartment_id values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_service_gateways_defined_tags" {
  description = "Map of defined_tags values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_service_gateways_display_name" {
  description = "Map of display_name values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no display_name are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_service_gateways_freeform_tags" {
  description = "Map of freeform_tags values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_service_gateways_route_table_id" {
  description = "Map of route_table_id values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no route_table_id are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.route_table_id if v.route_table_id != null && length(v.route_table_id) > 0 }
}
output "core_service_gateways_services" {
  description = "Map of services values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no services are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.services if v.services != null && length(v.services) > 0 }
}
output "core_service_gateways_state" {
  description = "Map of state values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no state are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_service_gateways_time_created" {
  description = "Map of time_created values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no time_created are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_service_gateways_vcn_id" {
  description = "Map of vcn_id values across all core_service_gateways, keyed the same as var.core_service_gateways except keys with no vcn_id are omitted"
  value       = { for k, v in oci_core_service_gateway.core_service_gateways : k => v.vcn_id if v.vcn_id != null && length(v.vcn_id) > 0 }
}

