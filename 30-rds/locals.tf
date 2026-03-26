locals {
  resource_name = "${var.project_name}-${var.environment}"
  mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
  databse_subnet_group_name = data.aws_ssm_parameter.databse_subnet_group_name.value
}
