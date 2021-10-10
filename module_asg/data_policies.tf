data "aws_iam_policy_document" "this" {

  statement {
    actions = [
    "kms:Describe*",
    "kms:List*",
    "kms:Get*"
  ]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
  
}