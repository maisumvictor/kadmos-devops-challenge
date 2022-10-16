
resource "google_compute_firewall" "this" {
  name          = var.name
  network       = var.vpc_name
  target_tags   = var.target_tags
  source_ranges = var.source_ranges

  allow {
    protocol = var.allow_protocol
    ports    = var.ports
  }

}