# #Task:   RedHat Virtual Machine with nsg , public 
# #Ubuntu Virtual Machine with nsg , public - ssh 
# #_____________________________________________________
# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "3.71.0"
#     }
#   }
# }

# # provider "azurerm" {
# #   features {

# #   }
# # }


# resource "azurerm_resource_group" "example" {
#   name     = "binu-rgs"
#   location = "North Europe"
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "binu-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "dmz"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.101.0/24"]
# }

# resource "azurerm_network_security_group" "example" {
#   name                = "Binu-DMZSecurityGroup1"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   security_rule {
#     name                       = "SSHOnly"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "22"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
#   security_rule {
#     name                       = "HttpsOnly"
#     priority                   = 101
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "443"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_public_ip" "example" {
#   name                = "Binu-PublicIp1"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = azurerm_subnet.example.id
#   network_security_group_id = azurerm_network_security_group.example.id
# }

# resource "azurerm_network_interface" "example" {
#   name                = "web1-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "private"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.example.id
#   }
# }

# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "binu-web1"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   size                = "Standard_D2s_v3"
#   admin_username      = "binu"
#   admin_password = "Pa$$w0rd@1302"
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
#   ]


#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "RedHat"
#     offer     = "RHEL"
#     sku       = "9_2"
#     version   = "latest"
#   }
# }