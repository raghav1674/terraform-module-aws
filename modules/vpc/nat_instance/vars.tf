variable "nat_ami_id" {

  type        = string
  description = "Ami id for nat instance"
  default="ami-00a36856283d67c39"
}

variable "nat_instance_type" {

  type        = string
  description = "Instance Type for nat Instance"
}

variable "nat_subnet_id" {

  type        = string
  description = "Nat instance Subnet ID"
}

variable "nat_vpc_security_group_ids" {

  type        = string
  description = "Nat instance SG Id"
}

variable "public_sg_id" {

  type        = string
  description = "Public Security ID"

}

variable "private_route_table_id" {

  type        = string
  description = "Private Route Table ID"
}

variable "nat_route_destination_cidr" {

  type        = string
  description = "NAT  Route Destination Cidr"
  default     = "0.0.0.0/0"
}