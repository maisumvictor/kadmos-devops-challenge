variable "algorithm" {
    type = string
    default = "RSA"
    description = "Algorithm used at the key"
}

variable "rsa_bits" {
    type = number
    default = 4096
    description = "(optional) describe your variable"
}

variable "filename" {
    type = string
    description = "File and path"
}

variable "permission" {
    type = string
    default = "0600"
    description = "(optional) describe your variable"
}