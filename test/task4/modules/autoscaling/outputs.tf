
# this will output the autoscaling group name
output "auto_scaling_group_name" {
  value = aws_autoscaling_group.auto_scaling_group.name
}