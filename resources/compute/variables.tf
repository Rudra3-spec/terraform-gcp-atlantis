variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "zone" {
  description = "GCP Zone"
  type        = string
}

variable "machine_type" {
  description = "VM Machine Type"
  type        = string
}

variable "subnetwork" {
  description = "GCP Subnetwork"
  type        = string
}

variable "vm_name" {
  description = "First VM name"
  type        = string
}

variable "vm_name_2" {
  description = "Second VM name"
  type        = string
}

variable "service_account_email" {
  description = "Service account email"
  type        = string
}
