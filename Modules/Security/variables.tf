variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "key_vault_name" {
  description = "Key Vault Name"
  type        = string
}

variable "key_vault_sku" {
  description = "Key Vault SKU"
  type        = string
  default     = "standard"
}

variable "key_vault_rbac" {
  description = "RBAC Configuration"

  type = object({
    principal_id = string
    role_name    = string
  })
}