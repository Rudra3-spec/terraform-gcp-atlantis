project_id = "gen-lang-client-0760529528"
region     = "us-central1"

# Shared subnet for all VMs
subnetwork = "https://www.googleapis.com/compute/v1/projects/gen-lang-client-0760529528/regions/us-central1/subnetworks/shubham-learning-subnet"

# Dynamic VM list
vms = [
  {
    name                  = "my-vm-instance"
    machine_type          = "e2-micro"
    zone                  = "us-central1-c"
    service_account_email = "atlantis-sa@gen-lang-client-0760529528.iam.gserviceaccount.com"
  }
]

# Existing VPC and subnet
vpc_name      = "shubham-learning-vpc"
subnet_name   = "shubham-learning-subnet"
ip_cidr_range = "10.0.1.0/24"

# Dynamic bucket list
buckets = [
  {
    name     = "gen-lang-client-0760529528-learning-bucket"
    location = "US-CENTRAL1"
  }
]

# Add firewall rules here when needed
firewall_rules = []
