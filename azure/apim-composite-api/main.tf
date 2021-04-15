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
  name = "rg-${var.project_name}"
  location = var.project_location
  tags = {
        project = var.project_name
        environment = var.project_environment
        description = var.project_description
    }
}



