variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }
variable "alb_sg" {}
variable "instance_sg" {}
variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
