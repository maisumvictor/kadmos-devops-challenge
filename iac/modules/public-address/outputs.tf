output "public_ip" {
  value = google_compute_address.this.address
}