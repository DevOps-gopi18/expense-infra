locals {
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_id.value)
  web_alb_sg_id = data.aws_ssm_parameter.web_alb_sg_id.value
  web_lb_certificate_arn = data.aws_ssm_parameter.web_lb_certificate_arn.value
  resource_name = "${var.project_name}-${var.environment}"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}
