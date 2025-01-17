# Public subnet 1
resource "aws_subnet" "public1" {
  availability_zone = "us-east-1a"
  #availability_zone = "use1-az1"
  cidr_block = "172.120.1.0/24"
  vpc_id = aws_vpc.vp2.id
  map_public_ip_on_launch = true
  tags = {
    Name = "utc-public-subnet-1a"
  }

}

# Public sub 2
resource "aws_subnet" "public2" {
  availability_zone = "us-east-1b"
  #availability_zone = "use1-az2"
  cidr_block = "172.120.2.0/24"
  vpc_id = aws_vpc.vp2.id
  map_public_ip_on_launch = true
  tags = {
    Name = "utc-public-subnet-1b"
  }

}

# Create a private subnet 1
resource "aws_subnet" "private1" {
  availability_zone = "us-east-1a"
  #availability_zone = "use1-az1"
  cidr_block = "172.120.3.0/24"
  vpc_id = aws_vpc.vp2.id
  tags = {
    Name = "utc-private-subnet-1a"
  }
}

# Create a private sub 2
  resource "aws_subnet" "private2" {
  availability_zone = "us-east-1b"
  #availability_zone = "use1-az2"
  cidr_block = "172.120.4.0/24"
  vpc_id = aws_vpc.vp2.id
  tags = {
    Name = "utc-private-subnet-1b"
  }
  }