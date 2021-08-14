variable "gloo_role" {
  description = "The role of the gloo cluster"
}

variable "gloo_cluster_name" {
  description = "The GKE Gloo Cluster Name"
}

variable "gloo_cluster_region" {
  description = "The GKE Gloo Cluster Region"
}

variable "gloo_machine_type" {
  description = "The GCP region of the gloo cluster"
}

variable "gloo_num_nodes" {
  description = "Number of nodes in GKE cluster"
  default     = 3
}

variable "gloo_vpc_name" {
  description = "The Gloo Kubernetes VPC Name"
}

variable "gloo_subnet_name" {
  description = "The Gloo Kubernetes Subnet Name"
}

variable "gloo_kubernetes_version" {
  description = "The Gloo Kubernetes Version to use"
}

locals {
  google_zone = data.google_compute_zones.available.names[0]
}