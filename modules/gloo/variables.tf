variable "gloo_role" {
  description = "The role of the cluster management or workload"
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

variable "gloo_istio_auth" {
  type        = string
  description = "the Istio authentication mode, default is AUTH_NONE"
}
variable "gloo_enable_istio" {
  type        = bool
  default     = false
  description = "Install Istio"
}

