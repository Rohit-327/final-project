variable "ami_id" {
  type        = string
  description = "AMI ID for the launch template"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "key_name" {
  type        = string
  description = "Key pair name"
}

variable "instance_sg" {
  type        = string
  description = "Security group ID for the instance"
}

variable "name" {
  type        = string
  description = "Name for ASG and tag"
}

variable "desired_capacity" {
  type        = number
  description = "Desired number of instances"
}

variable "max_size" {
  type        = number
  description = "Max ASG size"
}

variable "min_size" {
  type        = number
  description = "Min ASG size"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs"
}

variable "target_group_arn" {
  type        = string
  description = "ARN of ALB target group"
}

variable "tags" {
  type = map(object({
    key   = string
    value = string
  }))
  description = "Tags to apply to instances"
  default     = {}
}
variable "security_groups" {
  type = list(string)
}

