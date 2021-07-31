output "vpc_id" {

  value = aws_vpc.custom.id
}

output "igw_id" {

  value = aws_internet_gateway.custom.id
}