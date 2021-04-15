terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name = var.rg_name
  location = var.rg_location
  tags = {
        objective = "api composition using apim"
        owner = "Fernando Mejia"
        main_workload = "apim"
    }
}



