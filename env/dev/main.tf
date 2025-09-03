module "resource_group" {
  source = "../../modules/rg"
  rg_name = var.rg
}

module "azure_container_registry" {
  source = "../../modules/acr"
  acr_name = var.acr
  rg = module.resource_group.rg-output
  depends_on = [ module.resource_group ]
}

module "azure_k8s_cluster" {
  source = "../../modules/aks"
  aks_name = var.aks
  rg = module.resource_group.rg-output
}
