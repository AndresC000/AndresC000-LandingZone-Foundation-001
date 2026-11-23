variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "hub_vnet_name" {
  description = "Hub VNet Name"
  type        = string
}

variable "hub_address_space" {
  description = "Hub Address Space"
  type        = list(string)
}

variable "firewall_subnet_prefix" {
  description = "Azure Firewall Subnet Prefix"
  type        = list(string)
}

variable "bastion_subnet_prefix" {
  description = "Azure Bastion Subnet Prefix"
  type        = list(string)
}

variable "app_spoke_name" {
  description = "Application Spoke Name"
  type        = string
}

variable "app_spoke_address_space" {
  description = "Application Spoke Address Space"
  type        = list(string)
}

variable "data_spoke_name" {
  description = "Data Spoke Name"
  type        = string
}

variable "data_spoke_address_space" {
  description = "Data Spoke Address Space"
  type        = list(string)
}

variable "management_spoke_name" {
  description = "Management Spoke Name"
  type        = string
}

variable "management_spoke_address_space" {
  description = "Management Spoke Address Space"
  type        = list(string)
}
