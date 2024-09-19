variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "private_subnet" {
  description = "ID of the private subnet where the NAT Gateway will be deployed"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "create_igw" {
  description = "Determine wheter to create igw or not"
  type        = bool
}
