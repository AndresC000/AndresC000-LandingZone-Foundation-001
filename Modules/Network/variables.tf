variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
}

variable "address_space" {
  description = "Address Space"
  type        = list(string)
}

variable "management_subnet_name" {
  description = "Management Subnet Name"
  type        = string
}

variable "management_subnet_prefixes" {
  description = "Management Subnet Prefix"
  type        = list(string)
}

variable "shared_subnet_name" {
  description = "Shared Services Subnet Name"
  type        = string
}

variable "shared_subnet_prefixes" {
  description = "Shared Services Subnet Prefix"
  type        = list(string)
}

variable "nsg_name" {
  description = "Network Security Group Name"
  type        = string
}