output alias {
  value = var.alias
}

output id {
  value = aws_kms_key.this.id
}

output arn {
  value = aws_kms_key.this.arn
}