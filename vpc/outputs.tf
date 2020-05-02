output "VPC_ID" {
  value = aws_vpc.default.id
}

output "VPC_CIDR" {
  value = aws_vpc.default.cidr_block
}

output "PRIVATE_SUBNETS" {
  value = aws_subnet.private.*.id
}

output "PUBLIC_SUBNETS" {
  value = aws_subnet.public.*.id
}
