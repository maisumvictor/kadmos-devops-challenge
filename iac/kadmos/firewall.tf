module "firewall_ssh" {
    source = "../modules/networking/firewall/firewall"

    name = "allow-ssh"
    vpc_name = module.kadmos_vpc.id
    target_tags = [ "enable-ssh" ]
    allow_protocol = "tcp"
    ports = [ "22" ]
}

module "http" {
    source = "../modules/networking/firewall/firewall"

    name = "http-https"
    vpc_name = module.kadmos_vpc.id
    target_tags = [ "http" ]
    allow_protocol = "tcp"
    ports = [ "80", "443" ]
}

module "apache" {
    source = "../modules/networking/firewall/firewall"

    name = "apache-port"
    vpc_name = module.kadmos_vpc.id
    target_tags = [ "http" ]
    allow_protocol = "tcp"
    ports = [ "8081", "8080" ]
}
