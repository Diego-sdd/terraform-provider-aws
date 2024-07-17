variable "cidr_block" {
  type        = string
  description = "O bloco CIDR da VPC."
}

variable "vpc_name" {
  type        = string
  description = "O nome da VPC."
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Lista de blocos CIDR para as subnets públicas."
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Lista de blocos CIDR para as subnets privadas."
}

variable "azs" {
  type        = list(string)
  description = "Lista de zonas de disponibilidade para as subnets."
}

variable "enable_nat_gateway" {
  type        = bool
  description = "Booleano para habilitar o NAT Gateway na VPC."
  default     = false
}

variable "single_nat_gateway" {
  type        = bool
  description = "Booleano para utilizar um único NAT Gateway para todas as subnets privadas."
  default     = false
}
