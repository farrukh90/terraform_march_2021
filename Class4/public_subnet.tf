resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_cidr1
  tags = var.tags
}