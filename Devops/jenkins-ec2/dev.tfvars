ami_id                 = "ami-0953476d60561c955"
instance_type          = "t2.micro"
security_group_ids     = ["sg-0770d93470771a433"]
key_name               = "Rohit"
subnet_id              = "subnet-06038d473e76c972e"
iam_instance_profile_name  = "fqts-project-3"
user_data              = <<-EOF
  #!/bin/bash
  sudo yum update -y

  # Install Java 17 (Amazon Corretto)
  sudo amazon-linux-extras enable corretto17
  sudo yum install -y java-17-amazon-corretto

  # Install Jenkins
  wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
  sudo yum install -y jenkins

  # Enable and start Jenkins
  sudo systemctl enable jenkins
  sudo systemctl start jenkins
EOF
