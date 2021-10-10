resource aws_iam_role "this" {
   path                = "/terraform/instances/"
   name                = "${local.name}-asg-iam-role"
   description         = var.role_description
   assume_role_policy  = data.aws_iam_policy_document.this.json
}