locals {
  EKS_NAME        = "${var.PURPOSE}-eks-cluster"
  NODEGROUP_NAME  = "${var.PURPOSE}-nodegroup"
  PUBLIC_SUBNETS  = tolist(var.PUBLIC_SUBNETS)
  TAGS_SUBNETS    = join(" ", var.PUBLIC_SUBNETS)
}
