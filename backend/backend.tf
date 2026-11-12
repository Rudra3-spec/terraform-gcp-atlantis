terraform {
  backend "gcs" {
    bucket = "social-monitor-487714-terraform-state"
    prefix = "terraform/state"
  }
}
