remote_state {
    backend = "s3"

    generate = {
        path = "backend.tf"
        if_exists = "overwrite_terragrunt"
    }

    config = {
        bucket = "courses-terraform-terragrunt-states-bucket"
        key = "eu-central-1/${path_relative_to_include()}/terraform.tfvars"
        region = "eu-central-1"
        encrypt = true
        dynamodb_table = "courses-lock-table"
        profile = "default"
    }
}