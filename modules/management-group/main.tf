module "management_groups" {
  source = "git::https://github.com/az-lz-20-mb/mod-cus-res-management-group"
  for_each = var.management_groups
  name                          = each.value.name
  parent_management_group_id    = each.value.parent_management_group_id

}


    