vpc_id                = "vpc-045b91515e29195c0"
subnet_ids            = ["subnet-06038d473e76c972e", "subnet-080922c88fc3ee3f2"]
listener_port         = 80
listener_protocol     = "HTTP"
target_group_name     = "proj3-tg"
target_group_port     = 80
target_group_protocol = "HTTP"
alb_sg_id = "sg-0770d93470771a433"


name                  = "proj3-asg"
ami_id                = "ami-06e9b54cd96654dbd"
instance_type         = "t2.micro"
key_name              = "Rohit"
desired_capacity      = 2
min_size              = 2
max_size              = 3
target_group_arns     = ["arn:aws:elasticloadbalancing:us-east-1:230232161638:targetgroup/FQTS-dev-tg1/63e09083ef67f3ce"]
tags = {
  Environment = "dev"
  Project     = "fqts"
}
