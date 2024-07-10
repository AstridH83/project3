# Create vpc
resource "aws_vpc" "vp2" {
    cidr_block = "172.120.0.0/16"
    instance_tenancy = "default"
    tags = {
      Name = "utc-app"
      Team = "wdp"
      env = "dev"
    }
  
}

# Internet gateway
resource "aws_internet_gateway" "gtw1" {
  vpc_id = aws_vpc.vp2.id
}

