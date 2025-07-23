module "ec2_module" {
  source = "../../module/ec2/v0"  # Path to your module
  ami_id                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  enable_termination_protection = var.enable_termination_protection
  subnet_id            = var.subnet_id
 # iam_role_name                  = "fqts-proj3-iam-role" 
 iam_instance_profile = ""
  security_group_ids     = var.security_group_ids
  name = "fqts-appl"
  env = "dev"
  project_name = "proj3"
  company_name = "fqts"

 tags = {
    
    Environment = "dev"
    Role        = "Infrastructure"
  }
}


