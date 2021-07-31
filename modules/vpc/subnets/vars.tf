variable "vpc_id" {

  type        = string
  description = "VPC ID"
}

variable "public_subnet_cidr_block" {

  type        = string
  description = "Public Subnet Cidr block"
}

variable "public_subnet_availability_zone_id" {

  type        = string
  description = "Public Subnet Availability Zone ID"
}

variable "public_subnet_enable_public_ip" {

  type        = bool
  description = "Enable Public ip"
  default     = true
}

variable "private_subnet_cidr_block" {

  type        = string
  description = "Private Subnet CIDR block"
}

variable "private_subnet_availability_zone_id" {

  type        = string
  description = "Private Subnet Availability Zone ID"
}