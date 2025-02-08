

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

resource "aws_lb_target_group" "target_group" {
    
    name      = var.target_group_name
    port      = 80
    protocol  = "HTTP"
    vpc_id    = var.vpc_id

    health_check {
        
        path                = "/"
        interval            = 30
        timeout             = 5
        healthy_threshold   = 3
        unhealthy_threshold = 2
    }

    tags = {
        Name = var.target_group_name
    }

}