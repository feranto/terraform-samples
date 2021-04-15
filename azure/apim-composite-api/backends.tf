resource "azurerm_api_management_backend" "backend1" {
  name                = "backend2"
  resource_group_name = azurerm_resource_group.example.name
  api_management_name = azurerm_api_management.example.name
  protocol            = "https"
  url                 = "https://backend1"
  credentials {
    
  }
  resource_id = "value"
  
}

resource "azurerm_api_management_backend" "backend2" {
  name                = "backend2"
  resource_group_name = azurerm_resource_group.example.name
  api_management_name = azurerm_api_management.example.name
  protocol            = "https"
  url                 = "https://backend2"
}