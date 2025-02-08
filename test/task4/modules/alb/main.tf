

resource "aws_lb" "alb" {
  
    name                = var.alb_name
    internal            = false
    load_balancer_type  = "application"
    security_groups     = [var.security_group_id]
    subnets             = var.public_subnet_id

    tags = {
        Name = var.alb_name
    }

}