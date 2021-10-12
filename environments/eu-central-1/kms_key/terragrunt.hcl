include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_kms"
}

inputs = {
    alias = "alias/ec2key"
    description = "EC2 instance encrypt key"
    deletion_window_in_days = 10

    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
            "Sid": "Enable KMS Permissions",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::142725718225:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling",
                    "arn:aws:iam::142725718225:root"
                ]
            },
            "Action": "kms:*",
            "Resource": "*"
        }
  ]
}
EOF

}