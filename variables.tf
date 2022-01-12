// Naming variables
variable "environment" {
  type = string
}
variable "service" {
  type = string
}
variable "policy" {
  type = string
}
variable "role_name" {
  type = string
}
variable "managed_policies_list" {
  type = list(string)
  default = null
}