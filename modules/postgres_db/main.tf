resource "aws_db_instance" "this" {
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  identifier             = var.identifier
  instance_class         = var.instance_class
  username               = var.username
  password               = var.password
  db_name                = var.db_name
  skip_final_snapshot    = true
  storage_encrypted      = false
  vpc_security_group_ids = [aws_security_group.db_security_group.id]
}
