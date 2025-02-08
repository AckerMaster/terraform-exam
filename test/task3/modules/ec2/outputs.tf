
# we want to output the public ip
output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
}