module "Core" {
  source = "./Modules/Core"

  resource_group_name = var.resource_group_name
  location            = var.location
}
module "Network" {
  source = "./Modules/Network"

  location            = var.location
  resource_group_name = module.Core.resource_group_name

  vnet_name                  = var.vnet_name
  address_space              = var.address_space
  management_subnet_name     = var.management_subnet_name
  management_subnet_prefixes = var.management_subnet_prefixes
  shared_subnet_name         = var.shared_subnet_name
  shared_subnet_prefixes     = var.shared_subnet_prefixes
  nsg_name                   = var.nsg_name
}

module "Security" {
  source = "./Modules/Security"

  location            = var.location
  resource_group_name = module.Core.resource_group_name

  key_vault_name = var.key_vault_name

  key_vault_rbac = var.key_vault_rbac
}

module "Monitoring" {
  source = "./Modules/Monitoring"

  location            = var.location
  resource_group_name = module.Core.resource_group_name

  log_analytics_workspace_name = var.log_analytics_workspace_name
}