ports   = [22, 3389, 443, 80]
ami-id  = "ami-024e6efaf93d85776"
vm-type = "t2.micro"
#key            = "dev-keypair"
key            = "ohio"
instance_count = "2"
#EC2-sg = "aws_security_group.DEV-SG"