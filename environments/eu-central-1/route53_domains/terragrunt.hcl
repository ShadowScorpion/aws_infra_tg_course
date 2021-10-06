include {
    path = find_in_parent_folders()
}

terraform {
    source = "../../../module_route53"
}

inputs = {
    domain_name = "course.com"
    dns_records = {
        rule01 = {
            name = "app.course.com"
            ttl = 60
            type = "A"
            records = [
                "127.0.0.1"
            ]
        },
        rule02 = {
            name = "app2.course.com"
            ttl = 60
            type = "A"
            records = [
                "127.0.0.1"
            ]
        }
    }
}
