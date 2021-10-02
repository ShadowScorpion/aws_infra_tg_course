output alias {
  value = var.alias
}

output id {
  value = concat(aws_kms_key.this.*.id, [""])[0]
}