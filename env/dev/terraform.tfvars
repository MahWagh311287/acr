rg = {
    rg1 = {
        name = "swift-rg"
        location = "west us"
    }
}

acr = {
    acr1 = {
        name = "swift-acr"
        rgkey = "rg1"
        sku = "Premium"
        admin_enabled = "false"
    }
}

aks = {
    aks1 = {
        name = "swift-aks"
        rgkey = "rg1"
        dns_prefix = "swift-aks-dns"
        pool_name = "swift-pool"
        node_count = 2
        vm_size = "Standard_D2_v2"
        type = "SystemAssigned"
    }
}