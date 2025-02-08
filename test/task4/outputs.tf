
# this outputs the ALB DNS name
output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

# ths outputs autoscaling group name
output "auto_scaling_group_name" {
  value = module.autoscaling.auto_scaling_group_name
}