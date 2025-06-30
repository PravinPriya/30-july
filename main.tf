resource "azurerm_resource_group" "rg-block" {
  name     = "shiva-rgs"
  location = "central india"
}

resource "azurerm_kubernetes_cluster" "example" {
  name                = "shivaaks"
  location            = azurerm_resource_group.rg-block.location
  resource_group_name = azurerm_resource_group.rg-block.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "shivas"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}
  

  resource "azurerm_resource_group" "rg-block1" {
  name     = "shiva-rgs1"
  location = "central india"
}

 resource "azurerm_resource_group" "git" {
  name     = "shiva-rgs1"
  location = "central india"
}

 resource "azurerm_resource_group" "sunny" {
  name     = "shiva-rgg3"
  location = "central india"
}


resource "azurerm_resource_group" "lokesh" {
  name     = "shiva-rg5"
  location = "central india"
}

resource "azurerm_resource_group" "rajesh" {
  name     = "lokesh"
  location = "central india"
}

resource "azurerm_resource_group" "rahul" {
  name     = "rahul"
  location = "central india"
}


resource "azurerm_resource_group" "sunny" {
  name     = "bhanja"
  location = "central india"
}




