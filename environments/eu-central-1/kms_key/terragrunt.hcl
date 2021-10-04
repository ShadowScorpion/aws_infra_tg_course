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
}