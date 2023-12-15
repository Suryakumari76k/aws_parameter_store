resource "aws_ssm_parameter" "f11" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name: "Seetha", type: "String", value: "Seetha@123" },
    { name: "Gopal", type: "String", value: "Gopal@123" },
  ]
}
