#Defining required variables
variable "resource_group_name" {
  description = "Resource Group"
  default = "sql-db-NE-grp"
}
variable "Location" {
  description = "Location"
  default = "North Europe"
}
variable "virtual_network_name" {
  description = "Vnet name"
  default = "sql-db-vnet"
}
variable "subnet_name" {
  description = "Subnet name"
  default = "SubnetA"
}
variable "network_security_group" {
  description = "Network security group"
  default = "sql-db-nsg"
}