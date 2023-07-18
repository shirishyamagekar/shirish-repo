resource "aws_instance" "dev-ec2" {
  #availability_zone = "us-east-1"
  ami                         = "ami-0f769c109ff4a782d"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "dev-keypair"
  vpc_security_group_ids      = [aws_security_group.dev-sg.id]
  #subnet_id = "dev_subnet1"
  subnet_id        = aws_subnet.dev_subnet1.id
  disable_api_stop = "false"

  tags = {
    Name = "HelloWorld"
  }
}


