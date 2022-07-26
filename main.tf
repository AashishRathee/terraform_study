provider "azurerm" {
  features {}
}

# Refering to variables in local file
locals {
  mod_rg_name = var.resource_group_name
  mod_location = var.Location
  mod_vnet_name = var.virtual_network_name
  mod_subnet_name = var.subnet_name
  mod_network_security_group = var.network_security_group
}

#Creating resource group
resource "azurerm_resource_group" "sql-db-NE-grp" {
  name     = local.mod_rg_name
  location = local.mod_location
}

#creating virtual network
resource "azurerm_network_security_group" "network_security_group" {
  name                = local.mod_network_security_group
  location            = local.mod_location
  resource_group_name = local.mod_rg_name
}

resource "azurerm_virtual_network" "sql-db-vnet" {
  name                = local.mod_vnet_name
  location            = local.mod_location
  resource_group_name = local.mod_rg_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = local.mod_subnet_name
    address_prefix = "10.0.1.0/24"
  }
}