module "compute" {
  source = "../modules/compute"

  project_id   = var.project_id
  zone         = var.zone
  machine_type = var.machine_type
  subnetwork   = module.vpc.subnet_self_link
}

module "vpc" {
  source = "../modules/vpc"

  project_id = var.project_id
  region     = var.region
}

module "storage" {
  source = "../modules/storage"

  project_id = var.project_id
  region     = var.region
}
