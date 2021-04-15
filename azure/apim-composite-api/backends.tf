resource "azurerm_api_management_backend" "backend1" {
  name                = "backend2"
  resource_group_name = azurerm_resource_group.rg.name
  api_management_name = azurerm_api_management.apim.name
  protocol            = "http"
  url                 = "https://backend1"
}

resource "azurerm_api_management_backend" "backend2" {
  name                = "backend2"
  resource_group_name = azurerm_resource_group.rg.name
  api_management_name = azurerm_api_management.apim.name
  protocol            = "http"
  url                 = "https://backend2"
}