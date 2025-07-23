name             = "dev-asg1"
ami_id           = "ami-0953476d60561c955"
instance_sg       = "sg-0abc123def456ghij"
key_name          = "Rohit"
instance_type    = "t2.micro"
desired_capacity = 2
min_size         = 1
max_size         = 3
alb_name = "fqts-alb"
alb_sg_id = "sg-0abc123def456ghij"  # Replace with your actual security group ID
target_group_arns = ["arn:aws:elasticloadbalancing:us-east-1:230232161638:targetgroup/dev-tg/d895fa10b57f06e1"]  

subnet_ids = [
  "subnet-06038d473e76c972e",
  "subnet-080922c88fc3ee3f2"
]

#target_group_arns = ["arn:aws:elasticloadbalancing:us-east-1:230232161638:targetgroup/dev-tg/d895fa10b57f06e1"]  # Fill this if you're using ALB


tags = {
  Environment = "dev"
  Project     = "Test"
}
#target_group_arn  = "arn:aws:elasticloadbalancing:..."
