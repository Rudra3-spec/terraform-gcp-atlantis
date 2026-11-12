resource "google_compute_network" "my_vpc" {
  project                 = var.project_id
  name                    = "atlantis-vpc"
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "my_subnet" {
  project       = var.project_id
  name          = "atlantis-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = google_compute_network.my_vpc.id
}
