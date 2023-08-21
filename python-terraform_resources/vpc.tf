resource "aws_vpc" "my-vpc" {
  instance_tenancy = "default"
  cidr_block       = "10.0.0.0/16"

  tags = {
    name = "my_vpc"
  }
}
