output "policy_definition_id" {
  value = azurerm_policy_definition.allowed_locations.id
}

output "role_assignment_id" {
  value = azurerm_role_assignment.foundation_contributor.id
}