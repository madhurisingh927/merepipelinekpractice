terraform {
backend "azurerm" {}
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.38.1"

    }
  }
}
provider "azurerm" {
  features {}
    subscription_id = "25a58ceb-2570-42e2-9d35-00b46979c51a"
  }
  resource "azurerm_resource_group" "myrgg" {
    name = "merakaamrghai24"
    location = "westus"
  }
  resource "azurerm_storage_account" "stgg" {
  name                     = "merakaamstghai24"
  resource_group_name      = "merakaamrghai24"
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  depends_on = [ azurerm_resource_group.myrgg ]
  }
