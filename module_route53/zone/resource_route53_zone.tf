resource "aws_route53_zone" "this" {
  name = var.domain_name

  tags = {
    Name = var.domain_name,
    Environment = var.environment
  }
}