variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "vms" {
  type = list(object({
    name                  = string
    machine_type          = string
    zone                  = string
    service_account_email = optional(string)
  }))
}
