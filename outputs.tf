output "route_table_id" {
  value = module.Connectivity.route_table_id
}

output "blob_private_dns_id" {
  value = module.Connectivity.blob_private_dns_id
}

output "keyvault_private_dns_id" {
  value = module.Connectivity.keyvault_private_dns_id
}
output "network_assignment_id" {
  value = module.Identity.network_assignment_id
}

output "security_assignment_id" {
  value = module.Identity.security_assignment_id
}
output "recovery_vault_id" {
  value = module.Backup.recovery_vault_id
}

output "backup_policy_id" {
  value = module.Backup.backup_policy_id
}