resource "azurerm_network_security_group" "nsg" {
  for_each            = var.azure
  name                = each.value.name_nsg
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_virtual_network" "example" {
  for_each            = var.azure
  name                = each.value.name_vnet
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}