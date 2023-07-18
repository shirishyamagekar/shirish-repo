resource "aws_instance" "dev-ec2" {
  ami                         = var.ami-id
  instance_type               = var.vm-type
  associate_public_ip_address = true
  count                       = 2
  #subnet_id                   = "${element(aws_subnet.dev-subnet.*.id, count.index)}" #element(var.subnets, count.index)  #"aws_subnet.subnet-az-1.id" #
  subnet_id              = element(var.subnets, count.index)
  vpc_security_group_ids = [aws_security_group.DEV-SG.id]
  key_name               = var.key
  #count                       = var.instance_count
  tags = {
    Name = "dev-ec2"

  }
}

# resource "aws_ec2_instance_state" "stop" {
#  instance_id = aws_instance.dev-ec2.id 
# state = "stopped"
# }