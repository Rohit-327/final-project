module "alb" {
  source                = "../../Module/ALB-V1"
  name                 ="my-alb"
  alb_sg_id             = var.alb_sg_id
  vpc_id               = var.vpc_id
  subnet_ids           = var.subnet_ids
  listener_port        = var.listener_port
  listener_protocol    = var.listener_protocol
  target_group_name    = var.target_group_name
  target_group_port    = var.target_group_port
  target_group_protocol= var.target_group_protocol
}

output "alb_dns" {
  value = module.alb.alb_dns_name
}

# ----------------------------
# ASG Module
# ----------------------------
module "asg" {
  source             = "../../Module/ASG-V1"
  asg_name           = var.name
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name = var.key_name
  desired_capacity   = var.desired_capacity
  min_size           = var.min_size
  max_size           = var.max_size
  subnet_ids         = var.subnet_ids
  target_group_arns  = var.target_group_arns
  tags               = var.tags
  user_data          = filebase64("${path.module}/user_data.sh")
}

# ----------------------------
# Scaling Policy
# ----------------------------
resource "aws_autoscaling_policy" "cpu_tracking" {
  name                   = "root-cpu-tracking"
  autoscaling_group_name = module.asg.autoscaling_group_name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 50.0
  }
}