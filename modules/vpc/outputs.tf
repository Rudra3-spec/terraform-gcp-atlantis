output "vpc_name" {
  value = google_compute_network.my_vpc.name
}
output "vpc_id" {
  value = google_compute_network.my_vpc.id
}
output "subnet_self_link" {
  value = google_compute_subnetwork.my_subnet.self_link
}
