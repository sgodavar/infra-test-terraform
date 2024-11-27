terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = " 4.11.0"

    }
  }
}


provider "azurerm" {

  features {}
  subscription_id = "f7bb5964-7a42-4c15-b9af-baaee36e401a"

}

resource "azurerm_resource_group" "rg" {

  name     = "surya-test-rg"
  location = "southcentralus"
  
  tags = {
    environment = "dev"
    source      = "Terraform"
  }

}