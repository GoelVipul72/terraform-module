resource "azurerm_subnet" "subnet" {
  for_each             = var.azure
  name                 = each.value.name_subnet
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}