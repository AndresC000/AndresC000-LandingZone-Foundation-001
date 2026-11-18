variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}
variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "management_subnet_name" {
  type = string
}

variable "management_subnet_prefixes" {
  type = list(string)
}

variable "shared_subnet_name" {
  type = string
}

variable "shared_subnet_prefixes" {
  type = list(string)
}

variable "nsg_name" {
  type = string
}

variable "key_vault_name" {
  type = string
}

variable "key_vault_rbac" {
  type = object({
    principal_id = string
    role_name    = string
  })
}

variable "log_analytics_workspace_name" {
  type = string
}