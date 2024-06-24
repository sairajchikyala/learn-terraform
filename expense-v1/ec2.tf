resource "aws_instance" "frontend" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-08d863ad27d36e0b7"]
  tags = {
    Name = "frontend"
  }
}
#



resource "aws_instance" "backend" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-08d863ad27d36e0b7"]
  tags = {
    Name = "backend"
  }
}
#


resource "aws_instance" "mysql" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = "mysql"
  }
}
#


variable "ami" {
  default = "ami-031d574cddc5bb371"
}

variable "instance_type" {
  default = "t3.small"
}

variable "security_groups" {
  default = ["sg-08d863ad27d36e0b7"]
}
