variable "ami_id" {
  type        = string
  description = "O ID da Amazon Machine Image (AMI) que será usada para lançar a instância EC2."
}

variable "instance_type" {
  type        = string
  description = "O tipo de instância EC2, como 't2.micro', 'm5.large', etc."
}

variable "subnet_id" {
  type        = string
  description = "O ID da subnet na qual a instância EC2 será lançada."
}

variable "instance_name" {
  type        = string
  description = "O nome da instância EC2."
}

variable "environment" {
  type        = string
  description = "O ambiente no qual a instância será lançada, como 'dev', 'prod', etc."
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

