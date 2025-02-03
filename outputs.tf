output "management_groups" {
  value = { for key, content in module.management_groups : key => content }
}

# output "subscriptions" {
#   value = { for key, content in module.subscriptions : key => content }
# }

# output "subscriptions_local" {
#   value = { for key, content in module.subscriptions_local : key => content }
# }