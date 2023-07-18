resource "aws_route_table" "dev-route" {
  vpc_id = aws_vpc.dev-vpc.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.GW.id

  }

}

resource "aws_route_table_association" "association" {
  subnet_id      = aws_subnet.dev_subnet1.id
  route_table_id = aws_route_table.dev-route.id
}
resource "aws_route_table_association" "association2" {
  subnet_id      = aws_subnet.dev_subnet2.id
  route_table_id = aws_route_table.dev-route.id
}
resource "aws_route_table_association" "association3" {
  subnet_id      = aws_subnet.dev_subnet3.id
  route_table_id = aws_route_table.dev-route.id
}
resource "aws_route_table_association" "association4" {
  subnet_id      = aws_subnet.dev_subnet4.id
  route_table_id = aws_route_table.dev-route.id
}