
module "EC2_module" {
  source = "../../module/ec2/v0"  # Path to your module
  ami_id                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  enable_termination_protection = var.enable_termination_protection
  subnet_id            = var.subnet_id
  #iam_role_name        = "fqts-proj3-iam-role" 
  iam_instance_profile     = var.iam_instance_profile
  security_group_ids     = var.security_group_ids
  name         = var.name
  company_name = var.company_name
  project_name = var.project_name
  env          = var.env


 
  tags = {
    Name         = "${var.company_name}-${var.name}"
    company_name = var.company_name
    project_name = var.project_name
    env          = var.env
  }

}






  
