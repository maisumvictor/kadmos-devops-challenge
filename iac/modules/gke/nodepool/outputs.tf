output "id" {
    value = google_container_node_pool.this.id
}

output "name" {
    value = google_container_node_pool.this.name
}

output "location" {
    value = google_container_node_pool.this.location
}

output "instance_group_urls" {
    value = google_container_node_pool.this.instance_group_urls
}
