resource "aws_instance" "EC2" {  
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  disable_api_termination     = var.enable_termination_protection
  iam_instance_profile        = var.iam_instance_profile
  user_data                   = var.user_data

  tags = {
    Name         = "${var.company_name}-${var.name}"
    company_name = var.company_name
    project_name = var.project_name
    env          = var.env
  }
}
