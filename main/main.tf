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

resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group_name
  location = var.location

}

resource "azurerm_storage_account" "testing" {
  name                     = "alishasmagicaltfstorage"
  resource_group_name      = var.azurerm_resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"
  account_kind             = "BlobStorage"

}

