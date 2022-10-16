resource "tls_private_key" "this" {
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}

resource "local_file" "ssh_private_key_pem" {
  content         = tls_private_key.this.private_key_pem
  filename        = var.filename
  file_permission = var.permission
}