variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key name for EC2 access"
  type        = string
}

variable "tags" {
  description = "Default tags for EC2 instances"
  type        = map(string)
}

variable "enable_termination_protection" {
  description = "Flag to enable termination protection on EC2 instances"
  type        = bool
  default     = true
}


variable "subnet_id" {
  description = "List of subnet IDs for the EC2 instances"
  type        = string
}



variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}
variable "vpc_id" {
  description = "The VPC ID in which to create the EC2 instance"
  type        = string
}
variable "iam_role_name" {
  description = "Name of the existing IAM role to attach"
  type        = string
}


variable "user_data" {
  description = "User data to run on EC2 instance"
  type        = string
  default     = ""
}



