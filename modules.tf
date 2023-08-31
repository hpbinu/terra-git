module "rg1" {
  source = "./resourcegroup"
  rg_name = "Binu-rg"
  rg_location = "northeurope"
}

module "rg2" {
  source = "./resourcegroup"
  rg_location = "northeurope"
  rg_name = "Binu-rg1"
}

resource "azurerm_public_ip" "example" {
  name                = "Binu-Ip1"
  resource_group_name = module.rg1.name
  location            = module.rg1.location
  allocation_method   = "Static"
  depends_on = [ module.rg1 ]
  tags = {
    environment = "Production"
  }
}

# module "aks" {
#   source  = "Azure/aks/azurerm"
#   version = "7.3.1"
#   resource_group_name = "Binu-rg1"
#   cluster_log_analytics_workspace_name = "loganabinu"

#   # insert the 1 required variable here
# }

# module "caf-site-recovery" {
#   source  = "aztfmod/caf-site-recovery/azurerm"
#   version = "2.0.0"
#   # insert the 8 required variables here
# }