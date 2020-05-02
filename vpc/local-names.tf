locals {
  vpc_name        = "${lower(var.PURPOSE)}-vpc"
  subnet_prefix   = "${lower(var.PURPOSE)}-subnet"
}
