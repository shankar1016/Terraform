provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}
resource "azurerm_mysql_flexible_server" "test" {
  name                   = var.test_name
  resource_group_name    = azurerm_resource_group.rg.name
  location               = var.location
  administrator_login    = var.admin
  administrator_password = var.Admin
  sku_name               = "B_Standard_B1s"
}
resource "azurerm_mysql_flexible_server_firewall_rule" "demo" {
  name                = var.demo_name
  resource_group_name = azurerm_resource_group.rg.name
  server_name         = azurerm_mysql_flexible_server.test.name
  start_ip_address    = "125.16.213.150"
  end_ip_address      = "125.16.213.150"
}
