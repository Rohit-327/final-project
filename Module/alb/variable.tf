variable "name" {
  description = "Name of the ALB"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where the ALB and target group will be created"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for the ALB"
  type        = string
}

variable "listener_port" {
  description = "Port on which ALB listener listens"
  type        = number
  default     = 80
}

variable "listener_protocol" {
  description = "Protocol for the ALB listener"
  type        = string
  default     = "HTTP"
}

variable "target_group_name" {
  description = "Name of the ALB Target Group"
  type        = string
  default     = "fqts-proj3-tg"
}

variable "target_group_port" {
  description = "Port for the target group"
  type        = number
  default     = 80
}

variable "target_group_protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}
#variable "target_group_arn" {
 # type = string
#}

