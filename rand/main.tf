resource "random_string" "test" {
  length = 16
}

output "name1" {
  value = random_string.test.id
}
