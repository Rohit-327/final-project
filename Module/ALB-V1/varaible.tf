variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }
variable "listener_port" {}
variable "listener_protocol" {}
variable "target_group_name" {}
variable "target_group_port" {}
variable "target_group_protocol" {}
variable "alb_sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}
