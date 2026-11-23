output "hub_vnet_id" {
  value = azurerm_virtual_network.hub.id
}

output "app_spoke_id" {
  value = azurerm_virtual_network.app_spoke.id
}

output "data_spoke_id" {
  value = azurerm_virtual_network.data_spoke.id
}

output "management_spoke_id" {
  value = azurerm_virtual_network.management_spoke.id
}