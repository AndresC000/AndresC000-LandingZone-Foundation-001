output "route_table_id" {
  value = azurerm_route_table.hub_rt.id
}

output "blob_private_dns_id" {
  value = azurerm_private_dns_zone.blob.id
}

output "keyvault_private_dns_id" {
  value = azurerm_private_dns_zone.keyvault.id
}