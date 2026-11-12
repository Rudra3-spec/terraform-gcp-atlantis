
resource "google_compute_instance" "my_vm" {
  project      = var.project_id
  name         = "atlantis-demo-vm"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["allow-iap-ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {}
  }

  service_account {
    email  = "atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}

resource "google_compute_instance" "my_vm_2" {
  project      = var.project_id
  name         = "atlantis-demo-vm-2"
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["allow-iap-ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = var.subnetwork

    access_config {}
  }

  service_account {
    email  = "atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}

