# VPC
resource "google_compute_network" "vpc" {
  name                    = var.gloo_vpc_name
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = var.gloo_subnet_name
  region        = var.gloo_cluster_region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}