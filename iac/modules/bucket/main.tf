resource "google_storage_bucket" "this" {
  name          = var.bucket_name
  force_destroy = false
  location      = var.location
  storage_class = var.storage_class
  versioning {
    enabled = var.versioning
  }
}

