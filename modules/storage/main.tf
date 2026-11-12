resource "google_storage_bucket" "terraform_state" {
  project       = var.project_id
  name          = "${var.project_id}-terraform-state"
  location      = var.region
  force_destroy = false

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}
