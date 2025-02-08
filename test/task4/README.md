in this task we created ALB and Auto Scaling modules

they are located inside modules/

to run this code, change the following inside variables.tf:

Global configuration:

- region

ALB related:

- alb_name
- tg_name


Auto Scaling related:

- ami_id
- instance_type
- lt_name
- asg_name
- ec2_instance_name


# ----- Important ! ----- #

Once you run "terraform apply" it will ask for the following user inputs:

- public_subnet_ids (enter a list of subnets ID, for example ["subnet-id-1" , ""subnet-id-1"])
- vpc_id (enter a VPC ID)
- security_group_id (enter a security group ID)