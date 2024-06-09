azure-rg = {
  r01 = {
    name_rg  = "azure_rg01"
    location = "West Europe"
  }
  r02 = {
    name_rg  = "azure_rg02"
    location = "East US"
  }
}
azure-vnet = {
  vnet01 = {
    name_nsg            = "azure-security-group01"
    name_vnet           = "azure-vnet01"
    location            = "West Europe"
    resource_group_name = "azure_rg01"
    address_space       = ["10.0.0.0/16"]
  }
  vnet02 = {
    name_nsg            = "azure-security-group02"
    name_vnet           = "azure-vnet02"
    location            = "West Europe"
    resource_group_name = "azure_rg01"
    address_space       = ["10.1.0.0/16"]
  }
  vnet03 = {
    name_nsg            = "azure-security-group03"
    name_vnet           = "azure-vnet03"
    location            = "East US"
    resource_group_name = "azure_rg02"
    address_space       = ["10.2.0.0/16"]
  }
  vnet04 = {
    name_nsg            = "azure-security-group04"
    name_vnet           = "azure-vnet04"
    location            = "East US"
    resource_group_name = "azure_rg02"
    address_space       = ["10.3.0.0/16"]
  }
}
azure-subnet = {
  subnet01 = {
    name_subnet          = "azure-subnet01"
    resource_group_name  = "azure_rg01"
    virtual_network_name = "azure-vnet01"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet02 = {
    name_subnet          = "azure-subnet02"
    resource_group_name  = "azure_rg01"
    virtual_network_name = "azure-vnet01"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet03 = {
    name_subnet          = "azure-subnet03"
    resource_group_name  = "azure_rg01"
    virtual_network_name = "azure-vnet02"
    address_prefixes     = ["10.1.1.0/24"]
  }
  subnet04 = {
    name_subnet          = "AzureBastionSubnet"
    resource_group_name  = "azure_rg01"
    virtual_network_name = "azure-vnet02"
    address_prefixes     = ["10.1.2.0/26"]
  }
  subnet05 = {
    name_subnet          = "azure-subnet04"
    resource_group_name  = "azure_rg02"
    virtual_network_name = "azure-vnet03"
    address_prefixes     = ["10.2.1.0/24"]
  }
  subnet06 = {
    name_subnet          = "azure-subnet05"
    resource_group_name  = "azure_rg02"
    virtual_network_name = "azure-vnet04"
    address_prefixes     = ["10.3.1.0/24"]
  }
}
azure-sg = {
  sg01 = {
    name_sg                  = "newazuresg"
    resource_group_name      = "azure_rg01"
    location                 = "West Europe"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    name_con                 = "azurecontainer"
  }
}
azure-vm = {
  vm01 = {
    name_subnet          = "azure-subnet01"
    name_vm              = "azure-machine01"
    name_nic              = "azure-nic01"
    location             = "West Europe"
    resource_group_name  = "azure_rg01"
    size                 = "Standard_F2"
    admin_username       = "***"
    admin_password       = "***"
    virtual_network_name = "azure-vnet01"
    size="Standard_F2"
  }
  vm02 = {
    name_vm              = "azure-machine02"
    virtual_network_name = "azure-vnet01"
    name_subnet          = "azure-subnet02"
    name_nic              = "azure-nic02"
    location             = "West Europe"
    resource_group_name  = "azure_rg01"
    admin_username       = "***"
    admin_password       = "***"
    size="Standard_F2"
  }
  vm03 = {
    name_vm              = "azure-machine03"
    virtual_network_name = "azure-vnet02"
    name_subnet          = "azure-subnet03"
    name_nic              = "azure-nic03"
    location             = "West Europe"
    resource_group_name  = "azure_rg01"
    admin_username       = "***"
    admin_password       = "***"
    size="Standard_F2"
  }
  vm04 = {
    name_vm              = "azure-machine04"
    virtual_network_name = "azure-vnet03"
    name_subnet          = "azure-subnet04"
    name_nic              = "azure-nic04"
    location             = "East US"
    resource_group_name  = "azure_rg02"
    admin_username       = "***"
    admin_password       = "***"
    size="Standard_F2"
  }
  vm05 = {
    name_vm              = "azure-machine05"
    virtual_network_name = "azure-vnet04"
    name_subnet          = "azure-subnet05"
    name_nic              = "azure-nic05"
    location             = "East US"
    resource_group_name  = "azure_rg02"
    admin_username       = "***"
    admin_password       = "***"
    size="Standard_F2"
  }

}