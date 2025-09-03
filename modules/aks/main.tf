resource "azurerm_kubernetes_cluster" "example" {
  for_each = var.aks_name
  name                = each.value.name
  location            = var.rg[each.value.rgkey].location
  resource_group_name = var.rg[each.value.rgkey].name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = each.value.pool_name
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = each.value.identity_type
  }

}

