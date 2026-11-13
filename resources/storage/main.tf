module "storage" {
  source = "git::https://github.com/Rudra3-spec/terraform-gcp-modules.git//storage?ref=main"

  project_id  = var.project_id
  region      = var.region
  bucket_name = var.bucket_name
}
