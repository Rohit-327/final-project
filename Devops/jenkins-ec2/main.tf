module "jenkins_instance" {
  source                 = "../../module/ec2/v0"
  ami_id                 = var.ami_id
  instance_type          = "t2.micro"
  key_name               = var.key_name
  iam_instance_profile_name  = var.iam_instance_profile_name
  subnet_id              = var.subnet_id
  associate_public_ip    = true
  security_group_ids     = var.security_group_ids
  tags                   = { Name = "JenkinsInstance" }
}

