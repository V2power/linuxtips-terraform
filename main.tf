resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "private" {
  vpc_id = aws.vpc.main.id
  cidr_block = cidrsubnet(var.cidr_block, 8, 1)

  tags = {
    Name = "Main"
  }
}
