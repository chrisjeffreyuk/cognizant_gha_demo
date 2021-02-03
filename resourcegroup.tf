resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-Resources"
  location = var.location
}