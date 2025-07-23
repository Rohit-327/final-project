variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "iam_role_name" {}
variable "security_group_ids" {
  type = list(string)
}
variable "subnet_ids" {
  type = list(string)
}
variable "vpc_id" {}
variable "user_data" {
  type = string
}
variable "desired_capacity" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "target_group_arn" {
  type = string
}

variable "tags" {
  type = map(string)
}

#variable "key_name" {
 # type = string
#}

variable "instance_sg" {
  type = string
}
