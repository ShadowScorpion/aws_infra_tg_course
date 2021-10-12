resource aws_iam_role "instance_role" {
   path                = "/terraform/instances/"
   name                = "${local.name}-asg-iam-role"
   description         = var.role_description
   assume_role_policy  = data.aws_iam_policy_document.assume_policy.json
}

resource aws_iam_policy "instance_policy" {
  path                = "/terraform/instances/"
  name                = "${local.name}-instance-policy"
  description         = "${local.name} IAM KMS policy"
  policy              = data.aws_iam_policy_document.instance_policy.json
}

resource aws_iam_instance_profile "this" {
  path                = "/terraform/instances/"
  name                = "${local.name}-instances-profile"
  role                = aws_iam_role.instance_role.name
}

resource aws_iam_role_policy_attachment "instance_policy_attachment" {
  role                = aws_iam_role.this.name
  policy_arn          = aws_iam_policy.instance_policy.arn
}