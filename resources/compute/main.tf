module "compute" {
  source = "git::https://github.com/Rudra3-spec/terraform-gcp-modules.git//compute?ref=main"

  project_id            = var.project_id
  zone                  = var.zone
  machine_type          = var.machine_type
  subnetwork            = var.subnetwork
  vm_name               = var.vm_name
  vm_name_2             = var.vm_name_2
  service_account_email = var.service_account_email
}
