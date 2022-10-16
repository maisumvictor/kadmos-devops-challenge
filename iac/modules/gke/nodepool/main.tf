
resource "google_container_node_pool" "this" {
  name       = var.name
  location   = var.location
  cluster    = var.cluster_name
  node_count = var.node_count

  node_config {
    preemptible  = true
    machine_type = var.machine_type 

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    //service_account = var.service_account
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}