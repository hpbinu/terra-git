

# resource "azurerm_resource_group" "example" {
#   name     = "binu-lb"
#   location = "West Europe"
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "binu-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "binu-dmz"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.101.0/24"]
# }


# resource "azurerm_lb" "example" {
#   name                = "BinuLoadBalancer"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name


# }


# module "mylb" {
#   source                                 = "Azure/loadbalancer/azurerm"
#   resource_group_name                    = azurerm_resource_group.example.name
#   type                                   = "private"
#   frontend_subnet_id                     = module.network.vnet_subnets[0]
#   frontend_private_ip_address_allocation = "Static"
#   frontend_private_ip_address            = "10.0.1.6"
#   lb_sku                                 = "Standard"
#   pip_sku                                = "Standard" #`pip_sku` must match `lb_sku` 

#   remote_port = {
#     ssh = ["Tcp", "22"]
#   }

#   lb_port = {
#     http  = ["80", "Tcp", "80"]
#     https = ["443", "Tcp", "443"]
#   }

#   lb_probe = {
#     http  = ["Tcp", "80", ""]
#     http2 = ["Http", "1443", "/"]
#   }

#   tags = {
#     cost-center = "12345"
#     source      = "terraform"
#   }
# }

# module "network" {
#   source              = "Azure/network/azurerm"
#   resource_group_name = azurerm_resource_group.example.name
#   address_space       = "10.0.0.0/16"
#   subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   subnet_names        = ["subnet1", "subnet2", "subnet3"]

#   tags = {
#     environment = "dev"
#     costcenter  = "it"
#   }
# }