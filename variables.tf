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
variable "principal_id" {
  type = string
}

variable "allowed_locations" {
  type = list(string)
}
variable "budget_name" {
  type = string
}

variable "budget_amount" {
  type = number
}

#####ENTERPRISE####
variable "hub_vnet_name" {
  type = string
}

variable "hub_address_space" {
  type = list(string)
}

variable "firewall_subnet_prefix" {
  type = list(string)
}

variable "bastion_subnet_prefix" {
  type = list(string)
}

variable "app_spoke_name" {
  type = string
}

variable "app_spoke_address_space" {
  type = list(string)
}

variable "data_spoke_name" {
  type = string
}

variable "data_spoke_address_space" {
  type = list(string)
}

variable "management_spoke_name" {
  type = string
}

variable "management_spoke_address_space" {
  type = list(string)
}

variable "hub_vnet_id" {
  type = string
}

variable "network_contributor_object_id" {
  type = string
}

variable "security_admin_object_id" {
  type = string
}

variable "reader_object_id" {
  type = string
}

variable "recovery_vault_name" {
  type = string
}

variable "backup_policy_name" {
  type = string
}