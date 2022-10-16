variable "subnet_name" {
    type = string
    description = "Name your subnet"
}

variable "ip_cidr_range" {
    type = string
    description = "IP range eg: 000.000.000/00"
}

variable "region" {
    type = string
    description = "region"
}

variable "vpc_id" {
    type = string
    description = "VPC ID from where the subnet will be placed"
}
