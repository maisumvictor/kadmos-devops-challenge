module "kadmos_vpc" {
    source = "../modules/networking/vpc"
    
    vpc_name = "kadmos"
    auto_subnet = false 
    project = "dynamic-music-365510"
}

output "kadmos_vpc_id" {
    value = module.kadmos_vpc.id
}

output "kadmos_vpc_self_link" {
    value = module.kadmos_vpc.self_link
}

output "kadmos_vpc_gateway_ipv4" {
    value = module.kadmos_vpc.gateway_ipv4
}

###### Subnet 

module "kadmos_subnet_main" {
    source = "../modules/networking/subnet"

    subnet_name = "kadmos-subnet-main"
    ip_cidr_range = "10.13.0.0/24"
    region = "europe-west3"
    vpc_id = module.kadmos_vpc.id

}

# In case of usage of vpc native
# module "kadmos_subnet_k8s_pods" {
#     source = "../modules/networking/subnet"

#     subnet_name = "kadmos-subnet-k8s-pods"
#     ip_cidr_range = "10.13.1.0/24"
#     region = "europe-west3"
#     vpc_id = module.kadmos_vpc.id

# }

# module "kadmos_subnet_k8s_services" {
#     source = "../modules/networking/subnet"

#     subnet_name = "kadmos-subnet-k8s-services"
#     ip_cidr_range = "10.13.2.0/24"
#     region = "europe-west3"
#     vpc_id = module.kadmos_vpc.id
# }


output "kadmos_subnet_id" {
    value = module.kadmos_subnet_main.id
}

output "kadmos_subnet_self_link" {
    value = module.kadmos_subnet_main.subnet_self_link
}

output "kadmos_subnet_name" {
    value = module.kadmos_subnet_main.name

}