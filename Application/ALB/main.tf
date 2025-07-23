module "alb" {
  source  = "../../module/alb"
  vpc_id  = var.vpc_id
  subnets = var.subnet_ids
   listener_port         = var.listener_port
  listener_protocol     = var.listener_protocol
  target_group_name     = var.target_group_name
  target_group_port     = var.target_group_port
  target_group_protocol = var.target_group_protocol
}

output "alb_dns" {
  value = module.alb.alb_dns_name
}