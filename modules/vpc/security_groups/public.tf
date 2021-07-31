resource "aws_security_group" "custom_public" {
  name        = "custom_public"
  description = "Allow ssh from bastion"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description      = "Allow ssh from bastion"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups      = ["${var.bastion_sg_id}"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "custom-public-sg"
  }
}