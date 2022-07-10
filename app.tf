module "test_str" {
  source = "./rand"
}

module "str2" {
  count  = var.enable2
  source = "./rand"
}

variable "enable2" {
  type = number
}

output "n1" {
  value = module.test_str.name1
}

// the splat operator
// https://www.terraform.io/language/expressions/splat
output "n2" {
  value = one(module.str2[*].name1)
}
