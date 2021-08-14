output "kubernetes_cluster_name" {
  value       = google_container_cluster.gloo.name
  description = "Created Kubernetes ClusterName"
}

output "kubernetes_cluster_endpoint" {
  value       = google_container_cluster.gloo.endpoint
  description = "Created Kubernetes Cluster Endpoint"
}

output "kubernetes_cluster_zone" {
  value       = google_container_cluster.gloo.location
  description = "Created Kubernetes Cluster Zone"
}