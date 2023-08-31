#     resource "azurerm_resource_group" "example" {
#   name     = "binu-rgs"
#   location = "northeurope"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "binuIp${count.index}xyz"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = 3
#   tags = {
#     environment = "Production"
#   }
# }

# # output "pub_ips" {
# #   value = azurerm_public_ip.example[*].ip_address
# # }

# output "selected_public_ips" {
#   value = slice(azurerm_public_ip.example.*.ip_address, 0, 2)
# }