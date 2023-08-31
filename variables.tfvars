# provider "azurerm" {
#   features {

#   }
# }
# # variable "rg_name" {
# #   description = "Name of Resource group"
# #   default = "binu-rg"
# #   type = string
# #   sensitive = true
# # }

# # variable "rg_location" {
# #   description = "location of resource group"
# #   default = "North Europe"
# #   type = string
# # }

# # resource "azurerm_resource_group" "rg" {
# #     name = var.rg_name
# #     location = var.rg_location
# # }

# # Method 1
# #     variable "rg_name" {
# #     description = "This is the name of the resource group?"
# #     default = "binu-rg"
# #     type = string 
# # }

# # variable "rg_location" {
# #   description = "This is the location of the resource group?"
# #   default = "eastus"
# #   type = string
# # }

# # resource "azurerm_resource_group" "rg" {
# #     name = var.rg_name
# #     location = var.rg_location
# # }

# # # Method 2
# # variable "rg_name" {
# #     description = "This is the name of the resource group?"
# #     type = string 
# # }

# # variable "rg_location" {
# #   description = "This is the location of the resource group?"
# #   type = string
# # }

# # resource "azurerm_resource_group" "rg" {
# #     name = var.rg_name
# #     location = var.rg_location
# # }

# # rg_name = "binu-rg"
# # rg_location = "eastus"
