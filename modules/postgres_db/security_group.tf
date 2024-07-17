resource "aws_security_group" "db_security_group" {
  name_prefix = "db_security_group"
  description = "Security group for PostgreSQL database access"
  vpc_id      = var.vpc_id

  # Definindo regras de segurança para permitir conexões apenas do grupo de segurança do EC2 na VPC
  ingress {
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [var.ec2_security_group_id]
  }
}
