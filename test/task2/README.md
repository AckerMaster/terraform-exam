
#---------------------------------------------------------------------#
This task depends on task 1 (the VPC, subnets and internet gateway
were created there) so make sure you "terraform apply" task1 beforehed 
#---------------------------------------------------------------------#

set the following variables (int the variables.tf) as you wish:

- region
- security_group_name
- ami_id
- instance_name
- instance_type
- admin_username
- admin_password