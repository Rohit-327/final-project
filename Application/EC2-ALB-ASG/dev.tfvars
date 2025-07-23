ami_id                  = "ami-0953476d60561c955"
instance_type           = "t2.micro"
key_name                = "Rohit"
subnet_ids              = ["subnet-06038d473e76c972e", "subnet-080922c88fc3ee3f2"]
iam_role_name           = "fqts-proj3-iam-role"
security_group_ids      = ["sg-0770d93470771a433"]
instance_sg = "sg-0770d93470771a433"
vpc_id                  = "vpc-045b91515e29195c0"
enable_termination_protection = true


user_data = <<-EOF
  #!/bin/bash
  yum update -y
  yum install -y httpd
  systemctl start httpd
  systemctl enable httpd
  echo "Hello from Terraform and Apache!" > /var/www/html/index.html
  echo "Hello from Terraform!" > /home/ec2-user/hello.txt
EOF

# ALB variables
listener_port         = 80
listener_protocol     = "HTTP"
target_group_name     = "FQTS-dev-tg1"
target_group_port     = 80
target_group_protocol = "HTTP"

# ASG variables
name             = "FQTS-dev-asg"
desired_capacity = 2
min_size         = 1
max_size         = 3
target_group_arns = ["arn:aws:elasticloadbalancing:us-east-1:230232161638:targetgroup/dev-tg1/db842c1b0fa19ccf"]

tags = {
  Environment = "dev"
  Project     = "FQTS"
}
