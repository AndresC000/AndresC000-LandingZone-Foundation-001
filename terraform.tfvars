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