#VPC id
resource "aws_ssm_parameter" "vpc_id" {
  #/expense/dev/vpc_id
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

#Public subnet ids
resource "aws_ssm_parameter" "public_subnet_id" {
  #/expense/dev/vpc_id
  name  = "/${var.project_name}/${var.environment}/public_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.public_subnet_id)
}

#Private subnet ids
resource "aws_ssm_parameter" "private_subnet_id" {
  #/expense/dev/vpc_id
  name  = "/${var.project_name}/${var.environment}/private_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.private_subnet_id)
}

#Databse subnet ids
resource "aws_ssm_parameter" "databse_subnet_id" {
  #/expense/dev/vpc_id
  name  = "/${var.project_name}/${var.environment}/databse_subnet_id"
  type  = "StringList"
  value = join(",", module.vpc.databse_subnet_id)
}

resource "aws_ssm_parameter" "databse_subnet_group_name" {
  #/expense/dev/vpc_id
  name  = "/${var.project_name}/${var.environment}/databse_subnet_group_name"
  type  = "String"
  value = aws_db_subnet_group.expense.name
}