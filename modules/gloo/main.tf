# Gloo Mesh Cluster
resource "google_container_cluster" "gloo" {
  provider = google-beta
  name     = var.gloo_cluster_name
  location = "${var.gloo_cluster_region}-c"

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1

  ## Network config 
  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  addons_config {
    http_load_balancing {
      disabled = false
    }

    horizontal_pod_autoscaling {
      disabled = false
    }

    istio_config {
      disabled = !var.gloo_enable_istio
      auth     = var.gloo_istio_auth
    }
  }
}

resource "google_container_node_pool" "gloo_nodes" {
  name       = "${google_container_cluster.gloo.name}-node-pool"
  location   = "${var.gloo_cluster_region}-c"
  cluster    = google_container_cluster.gloo.name
  node_count = 3

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      app  = "gloo"
      role = "${var.gloo_role}"
    }

    machine_type = var.gloo_machine_type
    tags         = ["gloo", "${var.gloo_role}"]

    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}