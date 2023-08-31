#  resource "azurerm_resource_group" "example" {
#   name     = "binu-rgs"
#   location = "eastus"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "binuIp${count.index}"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = 3
#   tags = {
#     environment = "Production"
#   }
# }

# locals {
#   ips = azurerm_public_ip.example.*.ip_address
# }

# output "selected_public_ips" {
#   value = local.ips
# }