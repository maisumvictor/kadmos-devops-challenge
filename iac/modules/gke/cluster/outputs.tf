output "id" {
    value = google_container_cluster.this.id
}

output "name" {
    value = google_container_cluster.this.name
}

output "location" {
    value = google_container_cluster.this.location
}

output "endpoint" {
    value = google_container_cluster.this.endpoint
}

output "master_version" {
    value = google_container_cluster.this.master_version
}
