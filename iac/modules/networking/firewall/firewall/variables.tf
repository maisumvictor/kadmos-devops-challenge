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

variable "source_ranges" {
    type = list
    default = ["0.0.0.0/0"]
    description = "Ip ranges where the firewall will be applied. This is a list of CIDR ranges"
}

variable "allow_protocol" {
    type = string
    default = "tcp"
    description = "Protocol for this firewall rule Eg: TCP, UDP, ICMP"
}

variable "ports" {
    type = list
    default = ["0.0.0.0/0"]
    description = "Ip ranges where the firewall will be applied. This is a list of CIDR ranges"
}

