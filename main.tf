terraform {
  backend "azurerm" {
    resource_group_name = "TerraformRG"
    storage_account_name = "terraformtestaccount"
    container_name = "tfstatefile"
    key = "dev.terraform.tfstate"
  }

}
module "RG" {
  source = "./modules/RG"
  rgname = var.rgname
  location = var.location
}