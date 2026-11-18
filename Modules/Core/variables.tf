variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Location"
  type        = string
}

variable "tags" {
  description = "Common Tags"

  type = map(string)

  default = {
    Environment = "Dev"
    Project     = "LandingZone"
    Owner       = "Andres"
    CostCenter  = "Cloud"
  }
}
