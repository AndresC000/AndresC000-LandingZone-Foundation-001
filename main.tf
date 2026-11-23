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
module "Governance" {
  source = "./Modules/Governance"

  resource_group_id = module.Core.resource_group_id

  principal_id = var.principal_id

  allowed_locations = var.allowed_locations
}

module "FinOps" {
  source = "./Modules/FinOps"

  resource_group_id = module.Core.resource_group_id

  budget_name   = var.budget_name
  budget_amount = var.budget_amount
}

####ENTERPRISE#####

module "HubSpoke" {
  source = "./Modules/HubSpoke"

  location            = var.location
  resource_group_name = module.Core.resource_group_name

  hub_vnet_name          = var.hub_vnet_name
  hub_address_space      = var.hub_address_space
  firewall_subnet_prefix = var.firewall_subnet_prefix
  bastion_subnet_prefix  = var.bastion_subnet_prefix

  app_spoke_name          = var.app_spoke_name
  app_spoke_address_space = var.app_spoke_address_space

  data_spoke_name          = var.data_spoke_name
  data_spoke_address_space = var.data_spoke_address_space

  management_spoke_name          = var.management_spoke_name
  management_spoke_address_space = var.management_spoke_address_space
}

module "Connectivity" {
  source = "./Modules/Connectivity"

  location            = var.location
  resource_group_name = module.Core.resource_group_name

  hub_vnet_id = module.HubSpoke.hub_vnet_id
}

module "Identity" {
  source = "./Modules/Identity"

  resource_group_id = module.Core.resource_group_id

  network_contributor_object_id = var.network_contributor_object_id

  security_admin_object_id = var.security_admin_object_id

  reader_object_id = var.reader_object_id
}

module "Backup" {
  source = "./Modules/Backup"

  location            = var.location
  resource_group_name = module.Core.resource_group_name

  recovery_vault_name = var.recovery_vault_name
  backup_policy_name  = var.backup_policy_name
}
