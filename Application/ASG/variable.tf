# --- ALB module variables ---
#variable "alb_name" {
 # description = "Name of the Application Load Balancer"
  #type        = string
#}


variable "alb_sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ALB and ASG"
  type        = list(string)
}

# --- ASG module variables ---
variable "ami_id" {
  description = "AMI ID to launch instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for EC2 SSH access"
  type        = string
}

variable "instance_sg" {
  description = "Security group ID for EC2 instances"
  type        = string
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances"
  type        = number
}

variable "min_size" {
  description = "Minimum number of EC2 instances"
  type        = number
}

# This will be set dynamically from alb module output
variable "target_group_arn" {
  description = "ARN of the ALB target group"
  type        = string
}

variable "asg_tags" {
  description = "Tags to apply to ASG instances"
  type = map(object({
    key   = string
    value = string
  }))
  default = {}
}
variable "tags" {
  type = map(string)
  default = {
    Environment = "dev"
    Project     = "fqts-proj3"
  }
}

variable "target_group_arns" {
  type = list(string)
}

variable "name" {
  type = string
}
variable "alb_name" {
  type        = string
  description = "Name of the ALB"
}

