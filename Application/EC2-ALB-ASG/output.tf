output "instance_id" {
  value = module.ec2_module.instance_id     
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "asg_name" {
  value = module.asg.asg_name  # ✅ FIXED: use the output name, not the ASG value
}
