terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
    # backend "azurerm"{
    # storage_account_name = "nagnath1stg"
    # resource_group_name = "nagnath1_rg"
    # container_name = "pravin"
    # key = "yogipravin.tfstate"

    # }
}

provider "azurerm" {
  features {}
  subscription_id = "18a05760-1da8-4604-94cd-cb5655f29665"
}