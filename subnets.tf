
resource "aws_subnet" "public_subnets" {
  count = 3

  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.${count.index}.0/24"
  availability_zone = "us-east-1${["a", "b", "c"][count.index]}"

  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count = 3

  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = "10.0.${count.index + 10}.0/24"
  availability_zone = "us-east-1${["a", "b", "c"][count.index]}"

  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}