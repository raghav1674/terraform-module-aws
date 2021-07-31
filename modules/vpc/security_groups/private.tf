resource "aws_security_group" "custom_private" {
  name        = "custom_private"
  description = "Allow ssh from public sg"
  vpc_id      = "${var.vpc_id}"

  ingress {
    description     = "Allow ssh from public sg"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = ["${var.public_sg_id}"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "custom-private-sg"
  }
}