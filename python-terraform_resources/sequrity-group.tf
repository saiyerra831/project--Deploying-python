resource "aws_security_group" "my-sg" {
    name = "my-sg"
    vpc_id = aws_vpc.my-vpc.id
 ingress {
   from_port  = 22
   to_port    = 22
   protocol   = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }
 
ingress {
 from_port  = 9000
   to_port    = 9000
   protocol   = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }

egress {
  from_port  = 0
   to_port    = 0
   protocol   = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
   ipv6_cidr_blocks = ["::/0"]
}

tags = {
 name = "my-sg"
}
}

