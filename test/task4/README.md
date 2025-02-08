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

for this settings, adjust them to match your desired state

- public_subnet_ids (enter a list of subnets ID, for example ["subnet-id-1" , ""subnet-id-2"])
make sure that each subnet is from different AZ and that ALL subnets belong to the same VPC

- vpc_id (enter a VPC ID)

- security_group_id (enter a security group ID)
make sure the security group is attached to the VPC