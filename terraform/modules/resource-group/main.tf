resource "azurerm_resource_group" "res-group" {
  location = var.location
  name     = var.resource_group_name

  tags = var.tags
}