resource "aws_internet_gateway" "dev-IGW" {
  vpc_id = aws_vpc.dev-vpc.id

  tags = {
    Name = "dev-IGW"
  }
}