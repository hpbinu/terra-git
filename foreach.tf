# variable "rg_names" {
#     description = "This is the name of the resource group?"
#     default = ["bin-rg","bin-rg1","bin-rg2"]
#     type = list(string)
# }


# resource "azurerm_resource_group" "rg" {
#     for_each = toset(var.rg_names)
#     name = each.key
#     location = "eastus"
# }

# output "rg_id" {   
#     value = [for rg_name, rg1 in azurerm_resource_group.rg : rg1.id]
# }

# # map type variables For_each

# variable "rg_info" {
#     description = "This is the name of the resource group?"
#     default = {
#        dev = "eastus"
#        prod = "westus"
#        test = "southindia"
#     }
#     type = map(any)
# }

# resource "azurerm_resource_group" "rg" {
#     for_each = var.rg_info
#     name = each.key
#     location = each.value
# }