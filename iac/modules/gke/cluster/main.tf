resource "google_container_cluster" "this" {
  name     = var.name
  location = var.location

  remove_default_node_pool = true
  initial_node_count       = 1
}

