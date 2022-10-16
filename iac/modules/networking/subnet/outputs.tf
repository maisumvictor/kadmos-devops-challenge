output "subnet_self_link" {
  value = google_compute_subnetwork.this.self_link
}

output "id" {
    value = google_compute_subnetwork.this.id
}

output "name" {
    value = google_compute_subnetwork.this.name
}

output "gateway_adress" {
    value = google_compute_subnetwork.this.gateway_address
}