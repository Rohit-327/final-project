ami_id                  = "ami-0953476d60561c955"
instance_type           = "t2.micro"
key_name                = "Rohit"
subnet_id               = "subnet-06038d473e76c972e"
iam_role_name           = "fqts-proj3-iam-role"
security_group_ids      = ["sg-0770d93470771a433"]
vpc_id = "vpc-045b91515e29195c0"
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


tags = {
  Name        = "simple-ec2"
  Environment = "dev"
  Role        = "Infrastructure"
}
