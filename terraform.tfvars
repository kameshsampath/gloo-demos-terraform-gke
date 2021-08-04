istio_auth = "AUTH_NONE"
gloo_clusters = {
  mgmt : {
    region       = "asia-south1"
    machine_type = "n2-standard-4"
    num_nodes    = 3
    role         = "management"
    enable_istio = true
  },
  cluster-1 : {
    region       = "asia-southeast1"
    machine_type = "n2-standard-4"
    num_nodes    = 3
    role         = "workload"
    enable_istio = true
  }
}