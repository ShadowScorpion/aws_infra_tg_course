include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_route53"
}

inputs = {
    domain_name = "test.com"
    dns_records = {
        rule01 = {
            name = "app.test.com"
            ttl = 60
            type = "A"
            records = [
                "127.0.0.1"
            ]
        }
    }
}