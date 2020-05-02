locals {
  EKS_NAME        = "${var.PURPOSE}-eks-cluster"
  PUBLIC_SUBNETS  = tolist(var.PUBLIC_SUBNETS)
}
