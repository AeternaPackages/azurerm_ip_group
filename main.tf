locals {
  ip_groups = { for k1, v1 in var.ip_groups : k1 => { cidrs = v1.cidrs, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  ip_group_cidrs = merge([
    for k1, v1 in var.ip_groups : {
      for k2, v2 in coalesce(v1.ip_group_cidrs, {}) :
      "${k1}/${k2}" => merge(v2, {
        ip_group_id = module.ip_groups.ip_groups_id["${k1}"]
      })
    }
  ]...)
}

module "ip_groups" {
  source    = "git::https://github.com/AeternaModules/azurerm_ip_group.git?ref=v5.0.0"
  ip_groups = local.ip_groups
}

module "ip_group_cidrs" {
  source         = "git::https://github.com/AeternaModules/azurerm_ip_group_cidr.git?ref=v5.0.0"
  ip_group_cidrs = local.ip_group_cidrs
  depends_on     = [module.ip_groups]
}

