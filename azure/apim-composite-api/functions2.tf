resource "azurerm_storage_account" "functions2_storage" {
  name                     = substr(replace("${var.project_name}-functions2storage", "-", ""),0,24)
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.project_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_app_service_plan" "functions2_app_plan" {
  name                = "${var.project_name}-appservice-plan2"
  location            = var.project_location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "FunctionApp"

  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "functions2_function_app" {
  name                       = "${var.project_name}-azure-functions2"
  location                   = var.project_location
  resource_group_name        = azurerm_resource_group.rg.name
  app_service_plan_id        = azurerm_app_service_plan.functions2_app_plan.id
  storage_account_name       = azurerm_storage_account.functions2_storage.name
  storage_account_access_key = azurerm_storage_account.functions2_storage.primary_access_key
}