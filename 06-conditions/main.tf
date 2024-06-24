# conditions in terraform is all about using values
# cond ? true-val : fal-val

resource "aws_instance" "test" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = var.instance_type == "t2*" ? "t3.micro" : var.instance_type
}

variable "instance_type" {}
