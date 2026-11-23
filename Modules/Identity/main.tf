resource "azurerm_role_assignment" "network_contributor" {
  scope                = var.resource_group_id
  role_definition_name = "Network Contributor"
  principal_id         = var.network_contributor_object_id
}
resource "azurerm_role_assignment" "security_admin" {
  scope                = var.resource_group_id
  role_definition_name = "Key Vault Administrator"
  principal_id         = var.security_admin_object_id
}