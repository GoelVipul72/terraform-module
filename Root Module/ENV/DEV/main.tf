module "azurerm-rg" {
  source = "../../../Module/azurerm_rg"
  azure  = var.azure-rg
}
module "azurerm-sg" {
  source     = "../../../Module/azurerm_storage"
  azure      = var.azure-sg
  depends_on = [module.azurerm-rg]
}
module "azurerm-vnet" {
  source     = "../../../Module/azurerm_vnet"
  azure      = var.azure-vnet
  depends_on = [module.azurerm-rg]
}
module "azurerm-subnet" {
  source     = "../../../Module/azurerm_subnet"
  azure      = var.azure-subnet
  depends_on = [module.azurerm-vnet]
}
module "azurerm-vm" {
  source     = "../../../Module/azurerm_vm"
  azure      = var.azure-vm
  depends_on = [module.azurerm-subnet]
}