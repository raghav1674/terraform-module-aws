variable "vpc_cidr_block" {

  type        = string
  description = "VPC Cidr Block"
}


variable "instance_tenancy" {

  type        = string
  description = "Instance Tenancy"
  default     = "default"
}


variable "enable_dns_hostnames" {

  type        = bool
  description = "Enable Dns HostNames"
  default     = true
}

variable "public_subnet_cidr_block" {

  type        = string
  description = "Public Subnet Cidr block"
}

variable "public_subnet_availability_zone_id" {

  type        = string
  description = "Public Subnet Availability Zone ID"
}

variable "private_subnet_cidr_block" {

  type        = string
  description = "Private Subnet CIDR block"
}

variable "private_subnet_availability_zone_id" {

  type        = string
  description = "Private Subnet Availability Zone ID"
}

variable "nat_instance_type" {

  type        = string
  description = "Instance Type for nat Instance"
}
