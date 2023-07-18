# resource "aws_subnet" "dev_subnet1" {
#   vpc_id     = aws_vpc.dev-vpc.id
# availability_zone = "us-east-1a"
#   cidr_block = "10.16.1.0/24"

#   tags = {
#     Name = "dev_subnet1"
#   }
# }
# resource "aws_subnet" "dev_subnet2" {
#   vpc_id     = aws_vpc.dev-vpc.id
#   availability_zone = "us-east-1b"
#   cidr_block = "10.16.2.0/24"

#   tags = {
#     Name = "dev_subnet2"
#   }
# }
# resource "aws_subnet" "dev_subnet3" {
#   vpc_id     = aws_vpc.dev-vpc.id
#   availability_zone = "us-east-1"
#   cidr_block = "10.16.3.0/24"

#   tags = {
#     Name = "dev_subnet3"
#   }
# }
# resource "aws_subnet" "dev_subnet4" {
#   vpc_id     = aws_vpc.dev-vpc.id
#   availability_zone = "us-east-1a"
#   cidr_block = "10.16.4.0/24"

#   tags = {
#     Name = "dev_subnet4"
#   }
# }

resource "aws_subnet" "dev-subnet" {
  count      = length(var.azs)
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = element(var.subnets, count.index)

  tags = {

    Name = "dev-subnet-${count.index + 1}"
  }
}