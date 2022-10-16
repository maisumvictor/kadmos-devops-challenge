variable "name" {
    type = string
    description = "name the nodepool"
}

variable "location" {
    type = string
    description = "nodepool location"
}

variable "cluster_name" {
    type = string
    description = "Cluster to be attached"
}

variable "machine_type" {
    type = string
    default = "e2-medium"
    description = "Machine Type"
}

variable "node_count" {
    type = number
    default = 1
    description = "Number of instances inside the nodepool"
}

# Create a service account to be user by the vms to perform actions inside google cloud
# variable "service_account" {
#     type = string
#     description = "Service account"
# }