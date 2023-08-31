# resource "azurerm_resource_group" "rg" {
#     name = var.rg_name
#     location = var.rg_location
# }
# provider "azurerm" {
#   features {
#       resource_group {
#       prevent_deletion_if_contains_resources = false
#   }
# }
# }


# terraform {
#   backend "azurerm" {
#     storage_account_name = "anshuk6469"
#     container_name       = "terraform"
#     key                  = "terraform.tfstate"
#     access_key = ""
#   }

#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~>3.0"
#     }
#   }
# }
# variable "rg_info" {
#     description = "This is the name of the resource group?"
#     default = {
#         name1 = "binu-rg"
#         location1 = "eastus"
#         name2 = "binu-rg2"
#         location2 = "eastus2"
#     }
#     type = map(any)
# }

# resource "azurerm_resource_group" "rg" {
#     name = var.rg_info.name1
#     location = var.rg_info.location1
# }

# resource "azurerm_resource_group" "rg1" {
#     name = var.rg_info.name2
#     location = var.rg_info.location2
# }

# variable "rg_names" {
#     description = "This is the name of the resource group?"
#     default = ["binu-rg","deep-rg1","deep-rg2"]
#     type = list(string)
# }

# resource "azurerm_resource_group" "rg" {
#     name = var.rg_names[0]
#     location = "eastus"
# }

# resource "azurerm_resource_group" "rg1" {
#     name = var.rg_names[1]
#     location = "eastus"
# }

# resource "azurerm_resource_group" "rg2" {
#     name = var.rg_names[2]
#     location = "eastus"
# }