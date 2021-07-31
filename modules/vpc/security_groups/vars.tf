variable "vpc_id" {
  type        = string
  description = "VPC ID"
}


variable "bastion_sg_id" {
  type        = string
  description = "Bastion Host SG ID"
}

variable "public_sg_id" {

  type        = string
  description = "Public Instance SG ID"
}


variable "bastion_host_sg_cidr" {

  type        = string
  description = "Bastion Host SG CIDR"
  default     = "0.0.0.0/0"
}
