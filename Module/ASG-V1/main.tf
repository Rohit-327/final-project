resource "aws_launch_template" "this" {
  name_prefix   = var.asg_name
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data = base64encode(templatefile("${path.module}/user_data.sh", {
    ssh_pub_key = file("${path.module}/mykey.pub")
  }))

  lifecycle {
    create_before_destroy = true
  }
}


  tag_specifications {
    resource_type = "instance"
    tags          = var.tags
  }


resource "aws_autoscaling_group" "this" {
  name                      = var.asg_name
  desired_capacity          = var.desired_capacity
  max_size                  = var.max_size
  min_size                  = var.min_size
  vpc_zone_identifier       = var.subnet_ids
  target_group_arns         = var.target_group_arns
  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }
  tag {
    key                 = "Name"
    value               = var.asg_name
    propagate_at_launch = true
  }
}
resource "aws_key_pair" "this" {
  key_name   = "${var.project}-key"
  public_key = file("${path.module}/mykey.pub")
}


output "autoscaling_group_name" {
  value = aws_autoscaling_group.this.name
}