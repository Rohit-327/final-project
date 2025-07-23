module "asg" {
  source             = "../../Module/asg"
   alb_name  = var.alb_name
  
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  key_name           = var.key_name
  instance_sg        = var.instance_sg
  name               = var.asg_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  subnet_ids         = var.subnet_ids
   target_group_arn = var.target_group_arn

  tags               = var.asg_tags
}
