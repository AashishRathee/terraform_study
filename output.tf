output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.sql-db-vnet.id
}