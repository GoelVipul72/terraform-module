data "azurerm_subnet" "subnet" {
  for_each             = var.azure
  name                 = each.value.name_subnet
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name

}