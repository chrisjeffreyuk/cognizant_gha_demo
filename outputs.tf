output  "Resource_Group" {
  value = azurerm_resource_group.main.name
}

output "vNet_Name" {
  value = azurerm_virtual_network.primary.name
}

output "Subnet_1" {
  value = azurerm_subnet.frontend.name
}

output "Subnet_2" {
  value = azurerm_subnet.backend.name
}
output "Subnet_3" {
  value = azurerm_subnet.database.name
}
output "Subnet_4" {
  value = azurerm_subnet.security.name
}