output "public_sg_id" {

  value = aws_security_group.custom_public.id
}

output "private_sg_id" {

  value = aws_security_group.custom_private.id
}

output "bastion_sg_id" {

  value = aws_security_group.custom_bastion.id
}