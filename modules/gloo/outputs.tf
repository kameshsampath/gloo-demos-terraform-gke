output "region" {
  value       = var.gloo_cluster_region
  description = "GCloud Region"
}

output "kubernetes_cluster_name" {
  value       = var.gloo_cluster_name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = var.gloo_cluster_region
  description = "GKE Cluster Host"
}