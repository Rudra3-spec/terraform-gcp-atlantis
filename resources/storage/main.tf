module "storage" {
  source = "git::https://github.com/Rudra3-spec/terraform-gcp-modules.git//storage?ref=main"

  project_id = var.project_id
  buckets    = var.buckets
}
