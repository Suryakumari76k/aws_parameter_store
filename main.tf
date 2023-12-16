resource "aws_ssm_parameter" "f11" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name: "Rama", type: "String", value: "Rama@123" },
    { name: "Lakshman", type: "String", value: "Lakshman@123" },
  ]
}
