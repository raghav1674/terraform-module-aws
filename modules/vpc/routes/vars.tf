variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_route_cidr" {

  type        = string
  description = "Public Route CIDR"
  default="0.0.0.0/0"
}


variable "public_subnet_id" {

  type        = string
  description = "Public Subnet ID"
}

variable "private_subnet_id" {

  type        = string
  description = "Private Subnet ID"
}

variable "igw_id" {

  type        = string
  description = "Internet Gateway ID"
}
