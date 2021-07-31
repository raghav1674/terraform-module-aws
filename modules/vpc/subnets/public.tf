resource "aws_subnet" "custom_public" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "${var.public_subnet_cidr_block}"
  availability_zone_id    = "${var.public_subnet_availability_zone_id}"
  map_public_ip_on_launch = "${var.public_subnet_enable_public_ip}"
  tags = {
    Name = "custom-public-subnet"
  }
}
