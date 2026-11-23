output "network_assignment_id" {
  value = azurerm_role_assignment.network_contributor.id
}

output "security_assignment_id" {
  value = azurerm_role_assignment.security_admin.id
}