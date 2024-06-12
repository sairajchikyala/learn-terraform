# Declare the variable with value

variable "x" {
  default = 100
}


# declare variables without value

variable "y" {}

# print variables

output "x" {
  value = "var.x"
}