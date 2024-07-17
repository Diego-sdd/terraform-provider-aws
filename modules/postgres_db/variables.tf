variable "allocated_storage" {
  description = "The allocated storage size (in GB) for the database"
  type        = number
}

variable "engine" {
  description = "The database engine type (e.g., postgres)"
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "identifier" {
  description = "The name of the database instance"
  type        = string
}

variable "instance_class" {
  description = "The instance type (e.g., db.t2.micro) for the database"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "db_name" {
  description = "Name database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "ec2_security_group_id" {
  description = "ID of the EC2 security group to allow access from"
  type        = string
}
