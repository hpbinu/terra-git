resource "azurerm_resource_group" "example" {
  name     = "binu-rgs"
  location = "North Europe"
}
resource "azurerm_resource_group" "example" {
  name     = "binu-lb"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "binu-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "binu-dmz"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.101.0/24"]
}


resource "azurerm_lb" "example" {
  name                = "BinuLoadBalancer"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name


}