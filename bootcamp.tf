# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.24.0"
}

terraform {
    backend "azurerm" {
    resource_group_name = "terraform"
    storage_account_name = "terraformx"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

# Create a resource group
resource "azurerm_resource_group" "k8s" {
  name     = "bootcamp"
  location = "West Europe"
}
