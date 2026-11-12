resource "google_compute_instance" "my_vm" {
  project      = var.project_id
  name         = "atlantis-demo-vm"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {}
  }
}
