resource "azurerm_role_assignment" "foundation_contributor" {
  scope                = var.resource_group_id
  role_definition_name = var.role_definition_name
  principal_id         = var.principal_id
}
resource "azurerm_policy_definition" "allowed_locations" {
  name         = "allowed-locations-foundation"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Allowed Locations"

  policy_rule = jsonencode({
    if = {
      not = {
        field = "location"
        in    = var.allowed_locations
      }
    }
    then = {
      effect = "deny"
    }
  })
}
resource "azurerm_resource_group_policy_assignment" "allowed_locations" {
  name                 = "allowed-locations-assignment"
  resource_group_id    = var.resource_group_id
  policy_definition_id = azurerm_policy_definition.allowed_locations.id
}