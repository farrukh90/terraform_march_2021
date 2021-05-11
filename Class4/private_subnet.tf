resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr1
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = var.tags
}
resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_cidr2
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = var.tags
}
resource "aws_subnet" "private_subnet3" {
  vpc_id     = aws_vpc.main.id
  availability_zone = data.aws_availability_zones.available.names[2]
  cidr_block = var.private_cidr3
  tags = var.tags
}

resource "aws_eip" "nat" {
  vpc      = true
  tags = var.tags
}
resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_subnet1.id
  tags = var.tags
}