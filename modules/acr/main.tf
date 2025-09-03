resource "azurerm_container_registry" "acr-blk" {
    for_each = var.acr_name
  name                = each.value.name 
  resource_group_name = var.rg[each.value.rgkey].name
  location            = var.rg[each.value.rgkey].location
  sku                 = each.value.sku
  admin_enabled       = each.value.admin_enabled

}

