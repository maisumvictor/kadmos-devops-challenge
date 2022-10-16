
resource "google_compute_instance" "this" {
  name         = var.name
  machine_type = var.machine_type
  zone = var.zone
  tags         = var.tags

    boot_disk {
        initialize_params {
            image = "ubuntu-os-cloud/ubuntu-2204-lts"
            size = var.size
        }
    }

    metadata = {
        ssh-keys = var.ssh_keys
    }

    network_interface {
        network = var.network_id
        subnetwork = var.subnet_id
        access_config {
            nat_ip = var.public_ip
        }
    }
}