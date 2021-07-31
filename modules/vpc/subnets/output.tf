output "public_subnet_id" {

  value = aws_subnet.custom_public.id
}


output "private_subnet_id" {

  value = aws_subnet.custom_private.id
}

output "public_subnet_az_id"{
  value=aws_subnet.custom_public.availability_zone_id
}