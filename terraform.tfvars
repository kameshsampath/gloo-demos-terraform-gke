gloo_clusters = {
  gloo-cluster-1 : {
    region             = "asia-south1"
    vpc_name           = "gloo-vpc"
    subnet_name        = "gloo-subnet"
    machine_type       = "n2-standard-4"
    num_nodes          = 3
    role               = "management"
    kubernetes_version = "1.20"
  }
}