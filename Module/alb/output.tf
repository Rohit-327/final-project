#output "alb_dns" {
 # value = aws_lb.proj3_alb.dns_name
#}

output "target_group_arn" {
  value = aws_lb_target_group.proj3_tg.arn
}
