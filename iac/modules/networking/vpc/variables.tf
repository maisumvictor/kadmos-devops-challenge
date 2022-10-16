variable "vpc_name" {
    type = string
    description = "Name your VPC"
}

variable "auto_subnet" {
    type = bool
    description = "Automatically create subnets?"
}

variable "project" {
    type = string
    description = "Must to specify the project to avoid wrong deployments"
}
