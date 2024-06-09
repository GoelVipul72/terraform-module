terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.107.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "azure_rg01"  
    storage_account_name = "newazuresg"                    
    container_name       = "azurecontainer"                       
    key                  = "prod.terraform.tfstate"     
  }

}

provider "azurerm" {
  features {

  }
}