resource "aws_internet_gateway" "igw" {
  vpc_id        = aws_vpc.default.id

  tags          = {
    Name        = "${var.PURPOSE}-igw"
  }
}

resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = element(aws_subnet.public.*.id, 0)

  tags          = {
    Name        = "${var.PURPOSE}-ngw"
  }
}

resource "aws_eip" "nat" {
  vpc            = true
}
