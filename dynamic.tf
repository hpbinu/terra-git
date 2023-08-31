#    resource "azurerm_resource_group" "rg" {
#     name = "binu-d-rg"
#     location = "westus2"
# }


# locals {
#   subnets = [
#     {
#       name           = "snet01"
#       prefix = "192.168.101.0/24"
#     },
#     {
#       name           = "snet02"
#       prefix = "192.168.102.0/24"
#     }
#   ]
# }

# resource "azurerm_virtual_network" "vnet" {
#   name                = "vnet-westus2"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   address_space       = ["192.168.0.0/16"]
 
#   dynamic "subnet" {
#     for_each = local.subnets
#     content {
#       name           = subnet.value.name
#       address_prefix = subnet.value.prefix
#     }
#   }
# }