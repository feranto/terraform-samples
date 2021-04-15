resource "azurerm_api_management" "apim" {
  name                = "${var.project_name}-apim"
  location            = var.project_location
  resource_group_name = azurerm_resource_group.rg.name
  publisher_name      = "${var.project_name}-organization"
  publisher_email     = var.apim_admin_email

  sku_name = var.apim_tier

}