module "Core" {
  source = "./Modules/Core"

  resource_group_name = var.resource_group_name
  location            = var.location
}