variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }

# ALB variables
variable "listener_port" {}
variable "listener_protocol" {}
variable "target_group_name" {}
variable "target_group_port" {}
variable "target_group_protocol" {}

# ASG variables
variable "name" {}
variable "ami_id" {}
variable "instance_type" {}
variable  "key_name"{}
variable "desired_capacity" {}
variable "min_size" {}
variable "max_size" {}
variable "target_group_arns" { type = list(string) }
variable "tags" { type = map(string) }
variable "alb_sg_id" {
  description = "Security group ID to attach to the ALB"
  type        = string
}
variable "name" {
  description = "ALB name"
  type        = string
}

variable "security_group_id" {
  description = "ALB security group"
  type        = string
}
variable "alb_sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}

#variable "vpc_id" {
 # description = "VPC ID for ALB"
  #type        = string
#}
variable "user_data" {
  
}