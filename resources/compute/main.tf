module "compute" {
  source = "git::https://github.com/Rudra3-spec/terraform-gcp-modules.git//compute?ref=main"

  project_id = var.project_id
  subnetwork = var.subnetwork
  vms        = var.vms
}
