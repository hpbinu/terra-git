# data "azurerm_public_ip" "example" {
#   name                = "Binu-Public-IP1"
#   resource_group_name = "P-Binu-rg"
# }


# # resource "azurerm_public_ip" "example" {
# #   name                = "BinuIP1"
# #   resource_group_name = data.azurerm_resource_group.example.name
# #   location            = data.azurerm_resource_group.example.location
# #   allocation_method   = "Static"

# #   tags = {
# #     environment = "Production"
# #   }
# # }


# output "pubid" {
#   value = data.azurerm_public_ip.example.ip_address
# }