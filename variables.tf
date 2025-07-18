
variable "key_name" {
  type        = string
  description = "enter your key pair name here"

}
variable "security_group" {
  type        = list(string)
  description = "provide your security groups list here"

}

variable "instance_type_name" {
  type        = string
  description = "enter your instance type"
}
