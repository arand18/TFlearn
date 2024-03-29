terraform {
  required_version = ">= 1.6.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  backend "remote" {
    organization = "AlishaTForg"
    workspaces {
      name = "Terraformgithubactions"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  assetname  = "alisha"
  enviroment = "test"
  location   = "Centralus"

  storagacct_name = format("storageacct%s%s000", local.assetname, local.enviroment)

  resource_name = format("%s-%s", local.assetname, local.enviroment)
  storage_name  = format("storage%s", local.assetname)
}
resource "azurerm_resource_group" "rg" {
  name     = "${local.resource_name}-rg-1"
  location = local.location

}

resource "azurerm_storage_account" "storageact" {
  name                     = "${local.storage_name}001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"
  account_kind             = "BlobStorage"

}

