resource "aws_subnet" "private" {
  count         = 2
  cidr_block    = cidrsubnet(var.VPC_CIDR, 10, count.index)
  vpc_id        = aws_vpc.default.id
  tags          = {
    Name        = "${local.subnet_prefix}-private-${count.index+1}"
  }
}

resource "aws_subnet" "public" {
  count         = 2
  cidr_block    = cidrsubnet(var.VPC_CIDR, 10, count.index+2)
  vpc_id        = aws_vpc.default.id
  tags          = {
    Name        = "${local.subnet_prefix}-public-${count.index+1}"
  }
}
q