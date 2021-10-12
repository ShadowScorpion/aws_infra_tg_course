resource "aws_ssm_parameter" "private_asg_key" {
  name  = "private_asg_key"
  type  = "SecureString"
  value = tls_private_key.this.private_key_pem
}