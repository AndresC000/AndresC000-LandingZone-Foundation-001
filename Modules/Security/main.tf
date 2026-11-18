data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "key_vault" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tenant_id = data.azurerm_client_config.current.tenant_id

  sku_name = var.key_vault_sku

  rbac_authorization_enabled = true

  purge_protection_enabled = false
}

resource "azurerm_role_assignment" "key_vault_rbac" {
  scope                = azurerm_key_vault.key_vault.id
  role_definition_name = var.key_vault_rbac.role_name
  principal_id         = var.key_vault_rbac.principal_id
}