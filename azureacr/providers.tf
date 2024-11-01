terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "22634657-a7fa-4b73-9bca-2ce63624d8aa" 
  client_id       = "fca89e8e-be37-469c-8175-9f068ef3ad20"
  client_secret   = "Cp18Q~COv147f5nEQ9XzppGdqvzQ60YWV8TQYa~N"
  tenant_id       = "7d1f993b-bec6-4770-8c10-9660bf3d8b9f"
}