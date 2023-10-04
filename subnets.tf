resource "aws_subnet" "public-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.100.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "public-a"
  }
}

resource "aws_subnet" "public-b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.101.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "public-b"
  }
}

resource "aws_subnet" "public-c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.102.0/24"
  availability_zone = "eu-west-1c"

  tags = {
    Name = "public-c"
  }
}