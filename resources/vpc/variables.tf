variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "ip_cidr_range" {
  type = string
}

variable "firewall_rules" {
  type = list(object({
    name          = string
    direction     = string
    source_ranges = list(string)
    protocol      = string
    ports         = list(string)
    target_tags   = list(string)
  }))
  default = []
}
