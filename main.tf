provider "google" {
}

module "gloo-cluster" {
  source = "./modules/gloo-cluster"

  for_each = var.gloo_clusters

  gloo_cluster_name       = each.key
  gloo_cluster_region     = each.value.region
  gloo_num_nodes          = each.value.num_nodes
  gloo_machine_type       = each.value.machine_type
  gloo_role               = each.value.role
  gloo_kubernetes_version = each.value.kubernetes_version
  gloo_vpc_name           = each.value.vpc_name
  gloo_subnet_name        = each.value.subnet_name
}