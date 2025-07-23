
module "alb" {
  source             = "./modules/alb"
  name               = "fqts-proj3"
  vpc_id             = var.vpc_id
  subnet_ids        = var.subnet_ids
  security_group_id  = var.alb_sg
}

module "asg" {
  source            = "./modules/asg"
  name              = "fqts-proj3"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_ids        = var.private_subnets
  instance_sg       = var.instance_sg
  target_group_arn  = module.alb.target_group_arn
}
