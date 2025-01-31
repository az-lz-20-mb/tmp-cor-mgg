module "management_groups" {
  source = "../resources/managementGroup"

  for_each = var.management_groups

  name                          = each.value.name
  parent_management_group_id    = each.value.parent_management_group_id

}

module "subscriptions_local" {
  source = "../resources/subscription"

  for_each  = var.subscriptions_local

  subscription_name               = each.value.subscription_name
  parent_management_group_name    = each.value.parent_management_group_name
  subscription_id                 = each.value.subscription_id
  tags                            = local.tags

  depends_on = [ module.management_groups ]
}




    