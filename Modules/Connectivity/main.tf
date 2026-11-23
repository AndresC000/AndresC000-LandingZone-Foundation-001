resource "azurerm_route_table" "hub_rt" {
  name                = "rt-hub-enterprise-001"
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_route" "default_route" {
  name                = "default-route"
  resource_group_name = var.resource_group_name
  route_table_name    = azurerm_route_table.hub_rt.name

  address_prefix = "0.0.0.0/0"
  next_hop_type  = "Internet"
}

resource "azurerm_private_dns_zone" "blob" {
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "hub_blob_link" {
  name = "hub-blob-link"

  private_dns_zone_id = azurerm_private_dns_zone.blob.id

  virtual_network_id = var.hub_vnet_id

  registration_enabled = false
}

resource "azurerm_private_dns_zone" "keyvault" {
  name                = "privatelink.vaultcore.azure.net"
  resource_group_name = var.resource_group_name
}
resource "azurerm_private_dns_zone_virtual_network_link" "hub_kv_link" {
  name = "hub-kv-link"

  private_dns_zone_id = azurerm_private_dns_zone.keyvault.id

  virtual_network_id = var.hub_vnet_id

  registration_enabled = false
}