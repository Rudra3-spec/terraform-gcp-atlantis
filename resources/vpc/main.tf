module "vpc" {
  source = "git::https://github.com/Rudra3-spec/terraform-gcp-modules.git//vpc?ref=main"

  project_id    = var.project_id
  region        = var.region
  vpc_name      = var.vpc_name
  subnet_name   = var.subnet_name
  ip_cidr_range = var.ip_cidr_range
}
