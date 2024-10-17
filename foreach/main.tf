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
resource "azurerm_resource_group" "myrg" {
  for_each = var.resourcedetails

  name     = each.value.rg_name
  location = each.value.location
}

resource "azurerm_virtual_network" "myvnet" {
  for_each = var.resourcedetails
  name                = each.value.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.myrg[each.key].location
  resource_group_name = azurerm_resource_group.myrg[each.key].name
}

resource "azurerm_subnet" "mysubnet" {
  for_each = var.resourcedetails

  name                 = each.value.subnet_name
  address_prefixes     = ["10.0.0.0/24"]
  virtual_network_name = azurerm_virtual_network.myvnet[each.key].name
  resource_group_name  = azurerm_resource_group.myrg[each.key].name
}

