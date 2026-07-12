# --- azurerm_ip_group ---
output "ip_groups_id" {
  description = "Map of id values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_id
}

output "ip_groups_cidrs" {
  description = "Map of cidrs values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_cidrs
}

output "ip_groups_firewall_ids" {
  description = "Map of firewall_ids values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_firewall_ids
}

output "ip_groups_firewall_policy_ids" {
  description = "Map of firewall_policy_ids values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_firewall_policy_ids
}

output "ip_groups_location" {
  description = "Map of location values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_location
}

output "ip_groups_name" {
  description = "Map of name values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_name
}

output "ip_groups_resource_group_name" {
  description = "Map of resource_group_name values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_resource_group_name
}

output "ip_groups_tags" {
  description = "Map of tags values across all ip_groups, keyed the same as var.ip_groups"
  value       = module.ip_groups.ip_groups_tags
}

# --- azurerm_ip_group_cidr ---
output "ip_group_cidrs_id" {
  description = "Map of id values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = module.ip_group_cidrs.ip_group_cidrs_id
}

output "ip_group_cidrs_cidr" {
  description = "Map of cidr values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = module.ip_group_cidrs.ip_group_cidrs_cidr
}

output "ip_group_cidrs_ip_group_id" {
  description = "Map of ip_group_id values across all ip_group_cidrs, keyed the same as var.ip_group_cidrs"
  value       = module.ip_group_cidrs.ip_group_cidrs_ip_group_id
}


