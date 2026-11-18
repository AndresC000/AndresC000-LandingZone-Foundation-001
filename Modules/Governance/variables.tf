variable "resource_group_id" {
  description = "Resource Group ID"
  type        = string
}

variable "principal_id" {
  description = "Principal ID"
  type        = string
}

variable "role_definition_name" {
  description = "Role Name"
  type        = string
  default     = "Contributor"
}

variable "allowed_locations" {
  description = "Allowed Azure Regions"
  type        = list(string)
}