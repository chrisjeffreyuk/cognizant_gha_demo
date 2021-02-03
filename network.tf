resource "azurerm_virtual_network" "primary" {
  name                = "${var.prefix}-network"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "frontend" {
  name                 = "${var.prefix}-frontend"
  virtual_network_name = azurerm_virtual_network.primary.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes     = [ "10.0.1.0/24" ]
}

resource "azurerm_subnet" "backend" {
  name                 = "${var.prefix}-backend"
  virtual_network_name = azurerm_virtual_network.primary.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes     = [ "10.0.2.0/24" ]
}
resource "azurerm_subnet" "database" {
  name                 = "${var.prefix}-database"
  virtual_network_name = azurerm_virtual_network.primary.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes      = [ "10.0.3.0/24" ]
}

resource "azurerm_subnet" "security" {
  name                 = "${var.prefix}-security"
  virtual_network_name = azurerm_virtual_network.primary.name
  resource_group_name  = azurerm_resource_group.main.name
  address_prefixes      = [ "10.0.4.0/24" ]
}
