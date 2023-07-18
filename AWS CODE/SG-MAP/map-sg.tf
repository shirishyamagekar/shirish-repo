# # resource "aws_security_group" "dev-sg" {
# #   name        = "DEV-SG"
# #   description = "Allow RDP inbound traffic"
# #   vpc_id      = aws_vpc.dev-vpc.id

# output "port" {
#     value = "port dis is ${var.portdis} and port number ${lookup(var.SGASK, "${var.SGASK}")}"
#     }
    
 
# #   dynamic port {
# #     for_each = [22,5589,3389]
# #     iterator = port
# #     content {
# #       description = "allow from TLS"
# #       protocol    = "tcp"
# #       from_port   = port.value
# #       to_port     = port.value
# #       cidr_blocks = ["0.0.0.0/0"]
# #     }

# #   }


# #   ingress {
# #     description = "TLS from VPC"
# #     from_port   = 3389
# #     to_port     = 3389
# #     protocol    = "tcp"
# #     cidr_blocks = ["0.0.0.0/0"]
# #   }

# #   egress {
# #     from_port        = 0
# #     to_port          = 0
# #     protocol         = "-1"
# #     cidr_blocks      = ["0.0.0.0/0"]
# #     ipv6_cidr_blocks = ["::/0"]
# #   }

# # #   tags = {
# #     Name = "dev-sg"
# #   }


# # output "securitygrouparn" {
# #   value = "this is ARN ${aws_security_group.dev-sg.arn}"
# # }

# # output "securitygroupID" {
# #   value = "This is ID ${aws_security_group.dev-sg.id}"
# # }