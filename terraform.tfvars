location = "East US 2"

resource_group_name = "rg-lz-foundation-001a"

vnet_name = "vnet-lz-foundation-001a"

address_space = [
  "10.0.0.0/16"
]

management_subnet_name = "snet-management"

management_subnet_prefixes = [
  "10.0.1.0/24"
]

shared_subnet_name = "snet-shared"

shared_subnet_prefixes = [
  "10.0.2.0/24"
]

nsg_name = "nsg-lz-foundation-001a"

key_vault_name = "kv-lz-foundation-001a"

key_vault_rbac = {
  principal_id = "TU-OBJECT-ID"
  role_name    = "Key Vault Administrator"
}

log_analytics_workspace_name = "law-lz-foundation-001a"


principal_id = "TU_OBJECT_ID"

allowed_locations = [
  "eastus2"
]

budget_name   = "foundation-budget"
budget_amount = 50


####ENTERPRISE##

hub_vnet_name = "vnet-hub-ent-001"

hub_address_space = [
  "10.100.0.0/16"
]

firewall_subnet_prefix = [
  "10.100.1.0/24"
]

bastion_subnet_prefix = [
  "10.100.2.0/24"
]

app_spoke_name = "vnet-app-spoke"

app_spoke_address_space = [
  "10.101.0.0/16"
]

data_spoke_name = "vnet-data-spoke"

data_spoke_address_space = [
  "10.102.0.0/16"
]

management_spoke_name = "vnet-management-spoke"

management_spoke_address_space = [
  "10.103.0.0/16"
]

network_contributor_object_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

security_admin_object_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

reader_object_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"


recovery_vault_name = "rsv-enterprise-001"

backup_policy_name = "daily-backup-policy"