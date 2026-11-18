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