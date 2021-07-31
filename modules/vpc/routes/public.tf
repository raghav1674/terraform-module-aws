// public route table
resource "aws_route_table" "custom_public" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "${var.public_route_cidr}"
    gateway_id = "${var.igw_id}"
  }
  tags = {
    Name = "custom-public-route"
  }
}


resource "aws_route_table_association" "custom_public" {
  subnet_id      = "${var.public_subnet_id}"
  route_table_id = aws_route_table.custom_public.id
}

