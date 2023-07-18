terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  profile = "default"
}


resource "aws_vpc" "dev-vpc" {
  cidr_block       = "10.16.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_internet_gateway" "GW" {

  vpc_id = aws_vpc.dev-vpc.id

  tags = {
    Name = "Dev-IGW"

  }
}


resource "aws_subnet" "dev_subnet1" {

  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.16.1.0/24"

  tags = {
    Name = "dev_subnet1"

  }
}

resource "aws_subnet" "dev_subnet3" {

  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.16.3.0/24"

  tags = {
    Name = "dev_subnet3"

  }
}

resource "aws_subnet" "dev_subnet2" {

  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.16.2.0/24"

  tags = {
    Name = "dev_subnet2"

  }
}
resource "aws_subnet" "dev_subnet4" {
  vpc_id     = aws_vpc.dev-vpc.id
  cidr_block = "10.16.4.0/24"

  tags = {
    Name = "dev_subnet4"

  }
}
