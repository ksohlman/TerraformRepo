# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~>2.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rgKPSohlmanPilviakatemia2020Test" {
  name     = "rgKPSohlmanPilviakatemia2020Test"
  location = "France Central"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "KPSnetwork" {
  name                = "KPSnetwork"
  resource_group_name = azurerm_resource_group.rgKPSohlmanPilviakatemia2020Test.name
  location            = azurerm_resource_group.rgKPSohlmanPilviakatemia2020Test.location
  address_space       = ["10.0.0.0/16"]
}