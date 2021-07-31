// private route table
resource "aws_route_table" "custom_private" {
  vpc_id = "${var.vpc_id}"
  tags = {
    Name = "custom-private-route"
  }
}


resource "aws_route_table_association" "custom_private" {
  subnet_id      = "${var.private_subnet_id}"
  route_table_id = aws_route_table.custom_private.id
}