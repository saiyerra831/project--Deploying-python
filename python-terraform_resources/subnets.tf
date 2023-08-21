resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.my-vpc.id
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.0.0/17"
  map_public_ip_on_launch = "true"

  tags = {
    name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.my-vpc.id
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.192.0/19"
  map_public_ip_on_launch = "false"

  tags = {
    name = "private"
  }
}
