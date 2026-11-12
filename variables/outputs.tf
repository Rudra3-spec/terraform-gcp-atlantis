output "vm_name" {
  value = module.compute.vm_name
}

output "vm_public_ip" {
  value = module.compute.vm_public_ip
}

output "vpc_name" {
  value = module.vpc.vpc_name
}

output "bucket_name" {
  value = module.storage.bucket_name
}
