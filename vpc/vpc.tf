resource "aws_vpc" "default" {
  cidr_block      =   var.VPC_CIDR
  tags            = {
    Name          = local.vpc_name
  }
}
