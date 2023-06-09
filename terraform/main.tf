module "resource-group" {
  source = "./modules/resource-group"

  location            = var.region
  resource_group_name = "${local.pattern_name}-rg"

  tags = local.tags
}

module "function-service-plan" {
  source = "./modules/service-plan"


  location            = module.resource-group.resource_group_location
  resource_group_name = module.resource-group.resource_group_name
  service_plan_name   = "${local.pattern_name}-function-sp"
  service_plan_os   = var.service_plan_os
  sku_version         = var.sku_version

  tags = local.tags
}

module "azure-function" {
  source = "./modules/azure-function"


  function_name            = "${local.pattern_name}-simple-func"
  storage_account_name     = "${local.storage_account_pattern_name}strg"
  function_service_plan_id = module.function-service-plan.service_plan_id
  location                 = module.resource-group.resource_group_location
  resource_group_name      = module.resource-group.resource_group_name

  tags = local.tags
}