output "internet_gateway_id" {
  value = aws_internet_gateway.this.*.id
}

output "nat_gateway_id" {
  value = aws_internet_gateway.this.*.id
}