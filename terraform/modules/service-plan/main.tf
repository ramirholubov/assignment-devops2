resource "azurerm_service_plan" "serv-plan" {
  location            = var.location
  name                = var.service_plan_name
  os_type             = var.service_plan_type
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_version
}