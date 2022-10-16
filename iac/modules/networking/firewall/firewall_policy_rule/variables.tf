variable "name" {
    type = string
    description = "Name the Firewall rule"
}

variable "vpc_name" {
    type = string
    description = "Name your VPC"
}

variable "target_tags" {
    type = list
    description = "tags where this firewall rule will be applied"
}

variable "target_tags" {
    type = list
    default = ["0.0.0.0/0"]
    description = "Ip ranges where the firewall will be applied. This is a list of CIDR ranges"
}
