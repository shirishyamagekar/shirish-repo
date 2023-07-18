resource "aws_security_group" "DEV-SG" {
  name        = "allow from TLS"
  description = "Allow RDP inbound traffic"
  vpc_id      = aws_vpc.dev-vpc.id

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description = "allow from TLS"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  #   ingress {
  #     description = "allow from TLS"
  #     from_port = "3389"
  #     to_port = "3389"
  #     protocol = "tcp"
  #     cidr_blocks = ["0.0.0.0/0"]

  #   }
  egress {
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "dev-sg"
  }
}

