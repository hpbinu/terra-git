# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "~>3.0"
#     }
#   }
# }

# provider "azurerm" {
# features {

# }
# }


# resource "azurerm_resource_group" "example" {
#   name     = "binu-rgs"
#   location = "North Europe"
# }

# resource "azurerm_public_ip" "example" {
#   name                = "BinuPublicIp1"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# output "pub_ip" {
#   value = azurerm_public_ip.example.ip_address
#   sensitive = true
# }
# output "pubid" {
#    value = azurerm_public_ip.example.id
#  }
# #  _________________________________________________________________
# #  terraform output               -> to see all the outputs
# #  terraform output pub_ip   -> to see a particular output 
# #  ___________________________________________________________