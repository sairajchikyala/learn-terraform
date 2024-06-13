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
  value = var.z_map["x"]
}

# we acn give empty variables,but data can be sent from a file ,those files are called tfvars
variable "env" {}
output "env" {
  value = var.env
}

# *.auto.common.tfvars are the which files pick up automatically.along with this if the file name is terraform.auto.tfvars then also terraform picks files automatically no need to specify exclusively
variable "common" {}
output "common" {
  value = "var.common"
}

# data in terraform is three types
# 1. string - need quoting , only double quotes,terraform dont support quotes
# 2. number - no quotes
# 3. boolean - no quotes