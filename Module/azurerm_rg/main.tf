resource "azurerm_resource_group" "rg" {
    for_each = var.azure
  name     = each.value.name_rg
  location = each.value.location
}