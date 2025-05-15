# terraform-aws-rds

A reusable, production-ready Terraform module for creating an AWS RDS instance.

## Usage

```hcl
module "rds" {
  source  = "git::https://github.com/YOUR_GITHUB_USERNAME/terraform-aws-rds.git?ref=v1.0.0"

  identifier              = "mydb"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_type            = "gp2"
  username                = "admin"
  password                = var.db_password
  db_name                 = "mydatabase"
  port                    = 3306
  publicly_accessible     = false
  multi_az                = false
  storage_encrypted       = true
  backup_retention_period = 7
  skip_final_snapshot     = true
  vpc_security_group_ids  = [aws_security_group.rds.id]
  db_subnet_group_name    = aws_db_subnet_group.main.name

  tags = {
    Environment = "dev"
    Project     = "myproject"
  }
}
