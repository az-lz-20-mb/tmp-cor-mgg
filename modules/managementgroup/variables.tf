### Required variables
variable "management_groups" {
  description = "Management groups configuration"
  type = map(object({
    name       = string
    parent_management_group_id = string
  }))
}

# variable "subscriptions" {
#   description = "Platform subscriptions configuration"
#   type = map(object({
#     subscription_name             = string
#     parent_management_group_name  = string
#     tags                        = optional(map(string))
#   }))
# }

variable "subscriptions_local" {
  description = "Platform subscriptions configuration"
  type = map(object({
    subscription_name             = string
    parent_management_group_name  = string
    subscription_id               = string
    tags                        = optional(map(string))
  }))
}


variable "billing" {
  description = "Platform subscriptions configuration"
  type = object({
    billing_account_name        = string
    billing_profile_name        = string
    invoice_section_name        = string
  })
}

## Add alert recievers configuration

### Optional variables

variable "tags" {
  description = "Map of tags"
  type        = map(string)
  default     = null
}

