resource "aws_subnet" "public-a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "172.16.100.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "public-a"
  }
}