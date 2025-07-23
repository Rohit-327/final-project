variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}
variable "target_group_protocol" {
  type = string
  
}
variable "listener_port" {
  type = string
}
variable "listener_protocol" {
  type = string
}
variable "target_group_name" {
  type = string
}
variable "target_group_port" {
  type = string
}