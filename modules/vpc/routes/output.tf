output "public_route_table_id" {

  value = aws_route_table.custom_public.id
}


output "private_route_table_id" {

  value = aws_route_table.custom_private.id
}