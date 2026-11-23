project_id = "social-monitor-487714"
region     = "asia-south1"

# Shared subnet for all VMs
subnetwork = "https://www.googleapis.com/compute/v1/projects/social-monitor-487714/regions/asia-south1/subnetworks/atlantis-subnet"

# Dynamic VM list
vms = [
  {
    name                  = "atlantis-demo-vm"
    machine_type          = "e2-medium"
    zone                  = "asia-south1-a"
    service_account_email = "atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
  },
  {
    name         = "atlantis-demo-vm-2"
    machine_type = "e2-medium"
    zone         = "asia-south1-a"
  },
  {
    name                  = "my-new-vm"
    machine_type          = "e2-medium"
    zone                  = "asia-south1-a"
    service_account_email = "atlantis-sa@social-monitor-487714.iam.gserviceaccount.com"
  },
  {
    name         = "my-new-vm-2"
    machine_type = "e2-medium"
    zone         = "asia-south1-a"
  }
]

# VPC and subnet
vpc_name      = "atlantis-vpc"
subnet_name   = "atlantis-subnet"
ip_cidr_range = "10.0.1.0/24"

# Dynamic bucket list
buckets = [
  {
    name     = "social-monitor-487714-terraform-state"
    location = "asia-south1"
  }
]
service_accounts = [
  {
    account_id   = "my-vm-sa"
    display_name = "My VM Service Account"
  }
]
# Dynamic firewall rule list
firewall_rules = [
  {
    name          = "allow-iap-ssh"
    direction     = "INGRESS"
    source_ranges = ["35.235.240.0/20"]
    protocol      = "tcp"
    ports         = ["22"]
    target_tags   = ["allow-iap-ssh"]
  }
]
