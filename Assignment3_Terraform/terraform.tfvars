aws_region    = "ap-south-1"
instance_type = "t2.micro"
instance_name = "terraform-demo-ec2"
key_name      = "devops-key"

# Replace with your own public IP (find it at https://checkip.amazonaws.com) followed by /32
ssh_allowed_cidr = "203.0.113.10/32"
