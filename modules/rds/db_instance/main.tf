resource "aws_db_instance" "this" {
  identifier              = var.identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  username                = var.username
  password                = var.password
  db_name                 = var.db_name
  port                    = var.port
  publicly_accessible     = var.publicly_accessible
  multi_az                = var.multi_az
  storage_encrypted       = var.storage_encrypted
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot

  vpc_security_group_ids  = var.vpc_security_group_ids
  db_subnet_group_name    = var.db_subnet_group_name

  tags = var.tags
}
