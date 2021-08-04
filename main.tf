provider "google-beta" {
}

module "gloo" {
  source = "./modules/gloo"

  for_each = var.gloo_clusters

  gloo_istio_auth     = var.istio_auth
  gloo_cluster_name   = "gloo-${each.key}"
  gloo_cluster_region = each.value.region
  gloo_num_nodes      = each.value.num_nodes
  gloo_machine_type   = each.value.machine_type
  gloo_role           = each.value.role
  gloo_enable_istio   = each.value.enable_istio
}