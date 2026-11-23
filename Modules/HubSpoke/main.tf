

resource "azurerm_virtual_network" "hub" {
  name                = var.hub_vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.hub_address_space
}



resource "azurerm_subnet" "firewall" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.hub.name

  address_prefixes = var.firewall_subnet_prefix
}



resource "azurerm_subnet" "bastion" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.hub.name

  address_prefixes = var.bastion_subnet_prefix
}



resource "azurerm_virtual_network" "app_spoke" {
  name                = var.app_spoke_name
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.app_spoke_address_space
}



resource "azurerm_virtual_network" "data_spoke" {
  name                = var.data_spoke_name
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.data_spoke_address_space
}


resource "azurerm_virtual_network" "management_spoke" {
  name                = var.management_spoke_name
  location            = var.location
  resource_group_name = var.resource_group_name

  address_space = var.management_spoke_address_space
}



resource "azurerm_virtual_network_peering" "hub_to_app" {
  name                      = "hub-to-app"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.app_spoke.id
}

resource "azurerm_virtual_network_peering" "app_to_hub" {
  name                      = "app-to-hub"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.app_spoke.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
}


resource "azurerm_virtual_network_peering" "hub_to_data" {
  name                      = "hub-to-data"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.data_spoke.id
}

resource "azurerm_virtual_network_peering" "data_to_hub" {
  name                      = "data-to-hub"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.data_spoke.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
}


resource "azurerm_virtual_network_peering" "hub_to_management" {
  name                      = "hub-to-management"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.management_spoke.id
}

resource "azurerm_virtual_network_peering" "management_to_hub" {
  name                      = "management-to-hub"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.management_spoke.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
}