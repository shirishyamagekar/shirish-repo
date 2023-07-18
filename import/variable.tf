variable "ports" {
  type = list(number)
  #default = [22, 3389, 443, 80]
}

variable "ami-id" {
  type = string
  # default = "ami-024e6efaf93d85776"
}

variable "vm-type" {
  type = string
}

variable "key" {
  type = string

}
# variable "vm-count" {
#   type = number

# }

variable "instance_count" {
  type = number

}

variable "subnets" {
  type    = list(any)
  default = ["10.16.1.0/24", "10.16.2.0/24", "10.16.3.0/24", "10.16.4.0/24"]

}
variable "azs" {
  default = ["us-east-2a", "us-east-2b", "us-east-2c", "us-east-2a"]

}

variable "ec2" {
  default = ["DEV-EC2-1", "DEV-EC2-2", "DEV-EC2-3"]

}


# variable "subnets" {
#  type = list
#   default = ["aws_subnet.dev-dev_subnet1.id","aws_subnet.dev-dev_subnet2.id","aws_subnet.dev-dev_subnet3.id","aws_subnet.dev-dev_subnet4.id"]
# }



# variable "EC2-sg" {
#   type = string
#   default = "aws_security_group.DEV-SG.id"

# }