resource "aws_lb" "proj3_alb" {
  name               = var.name
  internal           = false
  load_balancer_type = "application"
  subnet_ids         = var.subnet_ids
  security_groups    = [var.security_group_id]
}

resource "aws_lb_target_group" "proj3_tg" {
  name         = var.target_group_name
  port         = var.target_group_port
  protocol     = var.target_group_protocol
  vpc_id       = var.vpc_id
  target_type  = "instance"
}

resource "aws_lb_listener" "proj3_listener" {
  load_balancer_arn = aws_lb.proj3_alb.arn
  port              = var.listener_port
  protocol          = var.listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = [aws_lb_target_group.proj3_tg.arn]
  }
}
