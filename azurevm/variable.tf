variable "rg_name" {
  default = "terraform_rg"
}
variable "location" {
  default = "westus"
}
variable "vnet_name" {
  default = "vnettest"
}
variable "subnet_name" {
  default = "subnettest"
}
variable "subnet_space" {
  default = ["10.1.0.0/24", "10.1.10.0/24"]
  type    = list(string)
}
variable "address_space" {
  default = ["10.1.0.0/16"]
  type    = list(string)
}
variable "nic_name" {
  default = "nic_demo"
}
variable "ip_name" {
  default = "ip"
}
variable "pip_name" {
  default = "pip"
}
variable "sku" {
  default = "2016-Datacenter"
}
variable "vm_name" {
  default = "windows"
}
variable "admin" {
  default = "shankar"
}
variable "size" {
  default = "Standard_B1s"
}

variable "user" {
  default = "azureuser"
}
variable "nsg" {
  default = "nsgdemo"
}