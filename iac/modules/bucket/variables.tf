variable "bucket_name" {
    type = string
    description = "Bucket name"
}

variable "location" {
    type = string
    default = "EU"
    description = "Location for the bucket"
}

variable "storage_class" {
    type = string
    default = "STANDARD"
    description = "Storage Class (string)"
}

variable "versioning" {
    type = bool 
    default = true
    description = "Boolean, enable or disable versioning at the bucket"
}
