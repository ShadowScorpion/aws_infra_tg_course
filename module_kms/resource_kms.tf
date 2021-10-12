resource "aws_kms_key" "this" {
    description = var.description
    deletion_window_in_days = var.deletion_window_in_days
    policy = var.policy
}

resource "aws_kms_alias" "this" {
    name = var.alias
    target_key_id = aws_kms_key.this.key_id
}