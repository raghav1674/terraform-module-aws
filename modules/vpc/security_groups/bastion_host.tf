resource "aws_security_group" "custom_bastion" {
  name        = "custom_bastion"
  description = "Allow ssh from internet"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description = "Allow ssh from internet"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.bastion_host_sg_cidr}"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "custom-bastion-sg"
  }
}