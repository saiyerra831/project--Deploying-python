resource "aws_instance" "vamsi" {
 ami   = "ami-053b0d53c279acc90"
 instance_type = "t2.micro"
 availability_zone  = "us-east-1a"
 key_name = "nani"
 vpc_security_group_ids  = [aws_security_group.my-sg.id]
 subnet_id   = aws_subnet.public.id
 associate_public_ip_address = true
 user_data      =  file("userdata.sh")
tags = {
  name = "vamsi"
}
}
