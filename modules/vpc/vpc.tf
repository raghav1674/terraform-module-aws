// VPC
resource "aws_vpc" "custom" {

  cidr_block           = "${var.vpc_cidr_block}"
  instance_tenancy     = "${var.instance_tenancy}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  tags = {

    Name = "custom-vpc"
  }

}

// IGW
resource "aws_internet_gateway" "custom" {

  vpc_id = aws_vpc.custom.id
  tags = {

    Name = "custom-igw"
  }

}

// SUBNETS
module "subnet" {

  source                              = "./subnets"
  vpc_id                              = aws_vpc.custom.id
  public_subnet_cidr_block            = "${var.public_subnet_cidr_block}"
  public_subnet_availability_zone_id  = "${var.public_subnet_availability_zone_id}"
  private_subnet_cidr_block           = "${var.private_subnet_cidr_block}"
  private_subnet_availability_zone_id = "${var.private_subnet_availability_zone_id}"
}

module "route" {

  source            = "./routes"
  vpc_id            = aws_vpc.custom.id
  public_subnet_id  = "${module.subnet.public_subnet_id}"
  private_subnet_id = "${module.subnet.private_subnet_id}"
  igw_id=aws_internet_gateway.custom.id 
}

module "security_group" {

  source        = "./security_groups"
  vpc_id        = aws_vpc.custom.id
  bastion_sg_id = "${module.security_group.bastion_sg_id}"
  public_sg_id  = "${module.security_group.public_sg_id}"
}

module "nat_instance" {

  source                 = "./nat_instance"
  nat_instance_type      = "${var.nat_instance_type}"
  nat_subnet_id  = "${module.subnet.public_subnet_id}"
  nat_vpc_security_group_ids="${module.security_group.public_sg_id}"
  public_sg_id           = "${module.security_group.public_sg_id}"
  private_route_table_id = "${module.route.private_route_table_id}"

}