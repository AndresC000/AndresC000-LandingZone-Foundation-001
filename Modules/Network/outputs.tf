output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}
output "management_subnet_id" {
  value = azurerm_subnet.management.id
}
output "shared_subnet_id" {
  value = azurerm_subnet.shared.id
}
output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}