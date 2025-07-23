output "asg_name" {
  value = aws_autoscaling_group.proj3_asg.name
}

output "scale_up_alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm_up.name
}

output "scale_down_alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm_down.name
}
