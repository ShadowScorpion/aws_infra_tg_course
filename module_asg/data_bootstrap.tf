//data template_file "dependency_init" {
//  template = file("${path.module}/bootstrap/dependencies.sh")
//}

//data template_file "app_init" {
//  template = file("${path.module}/bootstrap/app.sh")
//}

//data template_cloudinit_config "bootstrap" {
//  part {
//    content_type = "text/cloud-config"
//    content      = data.template_file.dependency_init.rendered
//  }

//  part {
//    content_type = "text/cloud-config"
//    content      = data.template_file.app_init.rendered
//  }
//}
