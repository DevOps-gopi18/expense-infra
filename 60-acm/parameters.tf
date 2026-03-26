resource "aws_ssm_parameter" "web_lb_certificate_arn" {
  #/expense/dev/vpn_sg_id
  name  = "/${var.project_name}/${var.environment}/web_lb_certificate_arn"
  type  = "String"
  value = aws_acm_certificate.expense.arn
}