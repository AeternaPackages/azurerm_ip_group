variable "ip_groups" {
  description = <<EOT
Map of ip_groups, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - cidrs
    - tags
Nested ip_group_cidrs (azurerm_ip_group_cidr):
    Required:
        - cidr
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    cidrs               = optional(set(string))
    tags                = optional(map(string))
    ip_group_cidrs = optional(map(object({
      cidr = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.ip_groups) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.ip_groups : [for kk in keys(coalesce(v0.ip_group_cidrs, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
