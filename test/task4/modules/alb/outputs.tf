
# we want it to output the ALB DNS name
output "alb_dns_name" {
    value = aws_lb.alb.dns_name
}

# we also want it to output the tg ARN
output "target_group_arn" {
    value = aws_lb_target_group.target_group.arn
}
