resource "aws_internet_gateway" "this" {
  count  = var.create_igw ? 1 : 0
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

resource "aws_eip" "this" {
  domain = "vpc"
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = var.private_subnet

  tags = {
    Name = "${var.vpc_name}-ngw"
  }
}
