resource "azurerm_resource_group" "mqt-rg01" {
    name = "bhui"
    location ="eastus" 
}

resource "azurerm_resource_group" "mqt-rg10" {
    name = "bhu10"
    location ="eastus" 
}

resource "azurerm_resource_group" "mqt-rg11" {
    name = "bhu11"
    location ="eastus" 
}

terraform {
  backend "azurerm" {
    resource_group_name  = "bhui"
    storage_account_name = "mtk12345"
    container_name       = "mtkstg"
    key                  = "bhui.tfstate"
  }

}

