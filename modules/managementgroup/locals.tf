locals {
  template_version = jsondecode(file("${path.module}/version.json"))

  tags = merge(var.tags, local.template_version)
}