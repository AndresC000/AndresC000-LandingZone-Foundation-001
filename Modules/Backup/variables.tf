variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "recovery_vault_name" {
  description = "Recovery Services Vault Name"
  type        = string
}

variable "backup_policy_name" {
  description = "Backup Policy Name"
  type        = string
}
