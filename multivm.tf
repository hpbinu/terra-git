

# variable "vms" {
#    description  = "How many VMS would you like to create?"
#    type = number
# }

# resource "azurerm_resource_group" "example" {
#   name     = "binu-rgs"
#   location = "eastus"
# }

# resource "azurerm_virtual_network" "example" {
#   name                = "binu-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
# }

# resource "azurerm_subnet" "example" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.example.name
#   virtual_network_name = azurerm_virtual_network.example.name
#   address_prefixes     = ["10.0.2.0/24"]
# }


# resource "azurerm_network_security_group" "example" {
#   name                = "binu-SecurityGroup1"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   security_rule {
#     name                       = "DMZ"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "22"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }

#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_public_ip" "example" {
#   name                = "binuIp${count.index}"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   allocation_method   = "Static"
#   count = var.vms
#   tags = {
#     environment = "Production"
#   }
# }

# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = azurerm_subnet.example.id
#   network_security_group_id = azurerm_network_security_group.example.id
# }

# resource "azurerm_network_interface" "example" {
#   name                = "binu-nic${count.index}"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name
#   count = var.vms
#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.example[count.index].id
#   }
# }

# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "binu-machine${count.index}"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   size                = "Standard_D2s_v3"
#   admin_username      = "binu"
#   admin_password = "Pa$$w0rd@1302"
#   count = var.vms
#   disable_password_authentication = false
#   network_interface_ids = [
#     azurerm_network_interface.example[count.index].id,
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