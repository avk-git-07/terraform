resource "aws_route53_record" "expense_2" {
  count           = length(var.instance_names)
  zone_id         = var.zone_id
  name            = var.instance_names[count.index] == "frontend-server" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  type            = "A"
  ttl             = 1
  records         = var.instance_names[count.index] == "frontend-server" ? [aws_instance.expense_2[count.index].public_ip] : [aws_instance.expense_2[count.index].private_ip]
  allow_overwrite = true
}
