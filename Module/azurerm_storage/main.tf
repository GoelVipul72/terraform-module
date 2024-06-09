resource "azurerm_storage_account" "azure-sg" {
  for_each = var.azure
  name                     = each.value.name_sg
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
resource "azurerm_storage_container" "azure-container" {
  for_each = var.azure
  name                  =each.value.name_con
  storage_account_name  = azurerm_storage_account.azure-sg[each.key].name
  container_access_type = "private"
}