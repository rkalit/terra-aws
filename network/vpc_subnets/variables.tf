variable "vpc_name" {
  description = "Variable for vpc name"
  type        = string
}

variable "vpc_cidr" {
  description = "Variable for cidr block of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "Variable for the Public Subnet's CIDR"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "Variable for the Private Subnet's CIDR"
  type        = list(string)
}

variable "azs" {
  description = "Variable for the availability zones"
  type        = list(string)
}


