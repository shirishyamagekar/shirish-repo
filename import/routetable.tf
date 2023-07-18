resource "aws_route_table" "dev-route" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-IGW.id
  }
  tags = {
    Name = "Dev-route"
  }
}

# resource "aws_route_table_association" "dev_subnet1" {
#   subnet_id      = "subnet-0086781c31c88cd94"
#   route_table_id = aws_route_table.dev-route.id
# }

resource "aws_route_table_association" "dev_subnet2" {
  count     = length(var.subnets)
  subnet_id = element(aws_subnet.dev-subnet.*.id, count.index)
  #subnet_id      = "subnet-0981c8a5867c7a612"
  route_table_id = aws_route_table.dev-route.id
}

# resource "aws_route_table_association" "dev_subnet3" {
#   subnet_id      = aws_subnet.subnet-az-3.id
#   route_table_id = aws_route_table.dev-route.id
# }

# resource "aws_route_table_association" "dev_subnet4" {
#   subnet_id      = aws_subnet.subnet-az-4.id
#   route_table_id = aws_route_table.dev-route.id
# }




# resource "aws_route_table_association" "dev_subnet2" {
#   subnet_id      = aws_subnet.dev-subnet-2.id
#   route_table_id = aws_route_table.dev-route.id
# }
# resource "aws_route_table_association" "dev_subnet3" {
#   subnet_id      = aws_subnet.dev-subnet-3.id
#   route_table_id = aws_route_table.dev-route.id
# }
# resource "aws_route_table_association" "dev_subnet4" {
#   subnet_id      = aws_subnet.dev-subnet-4.id
#   route_table_id = aws_route_table.dev-route.id
# }

