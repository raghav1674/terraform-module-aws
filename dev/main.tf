provider "aws" {

  region = "us-east-1"
}


module "vpc" {

  source                              = "../modules/vpc"
  vpc_cidr_block                      = "192.168.0.0/16"
  public_subnet_cidr_block            = "192.168.1.0/24"
  public_subnet_availability_zone_id  = "use1-az2"
  private_subnet_cidr_block           = "192.168.2.0/24"
  private_subnet_availability_zone_id = "use1-az4"
  nat_instance_type                   = "t2.micro"


}