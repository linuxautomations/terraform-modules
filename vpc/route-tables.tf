resource "aws_route_table" "public" {
  vpc_id          = aws_vpc.default.id

  route {
    cidr_block    = "0.0.0.0/0"
    gateway_id    = aws_internet_gateway.igw.id
  }


  tags = {
    Name          = "public"
  }
}


resource "aws_route_table" "private" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block    = "0.0.0.0/0"
    gateway_id    = aws_nat_gateway.gw.id
  }

  tags = {
    Name          = "private"
  }
}