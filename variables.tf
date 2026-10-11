variable "aws_assume_role_policy_lookup" {
  description = <<EOT
Map of aws_assume_role_policy_lookup, attributes below
Required:
    - external_id
Optional:
    - aws_partition
    - databricks_account_id
    - for_log_delivery
EOT

  type = map(object({
    external_id           = string
    aws_partition         = optional(string)
    databricks_account_id = optional(string)
    for_log_delivery      = optional(bool)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

