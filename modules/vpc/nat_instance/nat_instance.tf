resource "aws_instance" "custom_nat" {
  ami               = "${var.nat_ami_id}"
  instance_type     = "${var.nat_instance_type}"
  subnet_id ="${var.nat_subnet_id}"
  vpc_security_group_ids =["${var.nat_vpc_security_group_ids}"]
  source_dest_check = false
  tags = {
    Name = "custom-nat"
  }
}
resource "aws_route" "custom_nat_route" {
  route_table_id         = "${var.private_route_table_id}"
  instance_id            = aws_instance.custom_nat.id
  destination_cidr_block = "${var.nat_route_destination_cidr}"
}
