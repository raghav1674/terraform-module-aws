resource "aws_subnet" "custom_private" {
  vpc_id               = "${var.vpc_id}"
  cidr_block           = "${var.private_subnet_cidr_block}"
  availability_zone_id = "${var.private_subnet_availability_zone_id}"


  tags = {
    Name = "custom-private-subnet"
  }
}