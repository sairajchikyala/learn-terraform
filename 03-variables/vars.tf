# Declare the variable with value

variable "x" {
  default = 100
}


# declare variables without value

variable "y" {}

variable "y_list" {
  default = [1,2,3,4]
}

variable "z_map" {
  default = {
    x = 10
    y = 20
  }
}

# print variables

output "x" {
  value = "var.x"
}

output "y" {
  value = "var.y_list"
}

output "z" {
  value = "var.z_map"
}

output "y_1" {
  value = "var.y_list[1]"
}
output "z_x" {
  value = "var.z_map["x"]"
}

variable "ami" {
   default = "ami-031d574cddc5bb371"
}

variable "instance_type" {
   default = "t3.small"
}

variable "security_groups" {
   default = ["sg-08d863ad27d36e0b7"]
}