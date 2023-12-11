terraform {
  required_version = "~>= 1.6.5"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.0.2"
    }
  }
    cloud {
    organization = "AlishaTForg"
    workspaces {
      name = "Terraformgithubactions"
    }
  }
}

provider "azurerm" {
  features {}
}
