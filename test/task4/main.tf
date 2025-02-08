
# our provider
provider "aws" {
    region = var.region
}

# alb module with settings
module "alb" {

    source             = "./modules/alb"
    alb_name           = "liad-alb"
    target_group_name  = "liad-target-group"
    vpc_id             = var.vpc_id
    security_group_id  = var.security_group_id
    public_subnet_id  = var.public_subnet_ids
  
}