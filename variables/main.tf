module "vpc" {
  source = "../resources/vpc"

  project_id    = var.project_id
  region        = var.region
  vpc_name      = "atlantis-vpc"
  subnet_name   = "atlantis-subnet"
  ip_cidr_range = "10.0.1.0/24"
}

module "compute" {
  source = "../resources/compute"

  project_id            = var.project_id
  zone                  = var.zone
  machine_type          = var.machine_type
  subnetwork            = module.vpc.subnet_self_link
  vm_name               = "atlantis-demo-vm"
  vm_name_2             = "atlantis-demo-vm-2"
  service_account_email = "atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
}

module "storage" {
  source = "../resources/storage"

  project_id  = var.project_id
  region      = var.region
  bucket_name = "social-monitor-487714-terraform-state"
}
module "new_vm" {
  source = "../resources/compute"

  project_id            = var.project_id
  zone                  = var.zone
  machine_type          = var.machine_type
  subnetwork            = module.vpc.subnet_self_link
  vm_name               = "my-new-vm"
  vm_name_2             = "my-new-vm-2"
  service_account_email = "your-service-account"
}
