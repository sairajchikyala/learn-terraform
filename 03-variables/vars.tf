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