module "alb" {
  source                = "../../module/alb"
  name                  = var.name                       # ✅ Required
  vpc_id                = var.vpc_id
  subnet_ids            = var.subnet_ids                 # ✅ Correct key
  security_group_id     = var.alb_sg_id                  # ✅ Must be passed if required in module

  listener_port         = var.listener_port
  listener_protocol     = var.listener_protocol
  target_group_name     = var.target_group_name
  target_group_port     = var.target_group_port
  target_group_protocol = var.target_group_protocol
}

output "alb_dns" {
  value = module.alb.alb_dns_name
}

module "asg" {
  source            = "../../module/ASG"
  name              = var.name
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  desired_capacity  = var.desired_capacity
  min_size          = var.min_size
  max_size          = var.max_size
  subnet_ids        = var.subnet_ids
  target_group_arn   = module.alb.target_group_arn
  tags              = var.tags
}

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
