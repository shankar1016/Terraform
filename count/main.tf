terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.46.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "22634657-a7fa-4b73-9bca-2ce63624d8aa" 
  client_id       = "24c93053-5eea-41c2-84ad-ff7b5eb85d58"
  client_secret   = "xGL8Q~~G6rhnFuO3lWfOSSr86I9k1~H~aCxaWbwZ"
  tenant_id       = "7d1f993b-bec6-4770-8c10-9660bf3d8b9f"
  
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "Test1"
    location = "eastus"
    
}
resource "azurerm_virtual_network" "myvnet" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "mysubnet" {
  count                = 2
  name                 = "my-subnet-${count.index}"
  address_prefixes     = ["10.0.${count.index}.0/24"]
  virtual_network_name = azurerm_virtual_network.myvnet.name
  resource_group_name  = azurerm_resource_group.rg.name
}
