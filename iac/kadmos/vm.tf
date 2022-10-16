module "apache-vm" {
    source = "../modules/vm"

    name = "apache"
    network_id = module.kadmos_vpc.id
    subnet_id = module.kadmos_subnet_main.id
    public_ip = module.apache-address.public_ip
    ssh_keys = "ubuntu:${module.ssh_key.public_key_openssh}"
    tags = ["enable-ssh" , "http" ]
}

output "apache-vm-address" {
    value = module.apache-address.public_ip
}


