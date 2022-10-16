module "ssh_key" {
    source = "../modules/tls-local"

    filename = ".ssh/apache-vm"
}