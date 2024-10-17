
variable "resourcedetails" {
  type = map(object({
    name     = string
    location = string
    rg_name  = string
    vnet_name = string
    subnet_name = string
  }))
  default = {
    westus = {
      rg_name  = "westus-rg"  
      name     = "west-vm"
      location = "westus2"
      vnet_name = "west-vnet"
      subnet_name = "west-subnet"
    }
    eastus = {
      rg_name  = "eastus-rg"  
      name     = "east-vm"
      location = "eastus"
      vnet_name = "east-vnet"
      subnet_name = "east-subnet"
    }
  }
}

