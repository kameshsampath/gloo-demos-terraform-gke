output "gloo_clusters_info" {
  value       = { for k in sort(keys(var.gloo_clusters)) : k => module.gloo-cluster[k] }
  description = "The Information about created Gloo Clusters"
}
