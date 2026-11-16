resource "google_project_iam_member" "project_viewer" {
  project = var.project_id
  role    = "roles/viewer"
  member  = "serviceAccount:atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
}
resource "google_storage_bucket_iam_member" "bucket_viewer" {
  bucket = "social-monitor-487714-terraform-state"
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
}
resource "google_service_account_iam_member" "service_account_user" {
  service_account_id = "projects/${var.project_id}/serviceAccounts/atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"

  role   = "roles/iam.serviceAccountUser"
  member = "serviceAccount:atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
}
