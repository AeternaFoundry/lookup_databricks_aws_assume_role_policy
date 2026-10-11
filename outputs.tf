output "aws_assume_role_policy_lookup_id" {
  description = "Map of id values across all aws_assume_role_policy_lookup, keyed the same as var.aws_assume_role_policy_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_aws_assume_role_policy.aws_assume_role_policy_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "aws_assume_role_policy_lookup_aws_partition" {
  description = "Map of aws_partition values across all aws_assume_role_policy_lookup, keyed the same as var.aws_assume_role_policy_lookup except keys with no aws_partition are omitted"
  value       = { for k, v in data.databricks_aws_assume_role_policy.aws_assume_role_policy_lookup : k => v.aws_partition if v.aws_partition != null && length(v.aws_partition) > 0 }
}
output "aws_assume_role_policy_lookup_databricks_account_id" {
  description = "Map of databricks_account_id values across all aws_assume_role_policy_lookup, keyed the same as var.aws_assume_role_policy_lookup except keys with no databricks_account_id are omitted"
  value       = { for k, v in data.databricks_aws_assume_role_policy.aws_assume_role_policy_lookup : k => v.databricks_account_id if v.databricks_account_id != null && length(v.databricks_account_id) > 0 }
}
output "aws_assume_role_policy_lookup_external_id" {
  description = "Map of external_id values across all aws_assume_role_policy_lookup, keyed the same as var.aws_assume_role_policy_lookup except keys with no external_id are omitted"
  value       = { for k, v in data.databricks_aws_assume_role_policy.aws_assume_role_policy_lookup : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "aws_assume_role_policy_lookup_for_log_delivery" {
  description = "Map of for_log_delivery values across all aws_assume_role_policy_lookup, keyed the same as var.aws_assume_role_policy_lookup except keys with no for_log_delivery are omitted"
  value       = { for k, v in data.databricks_aws_assume_role_policy.aws_assume_role_policy_lookup : k => v.for_log_delivery if v.for_log_delivery != null }
}
output "aws_assume_role_policy_lookup_json" {
  description = "Map of json values across all aws_assume_role_policy_lookup, keyed the same as var.aws_assume_role_policy_lookup except keys with no json are omitted"
  value       = { for k, v in data.databricks_aws_assume_role_policy.aws_assume_role_policy_lookup : k => v.json if v.json != null && length(v.json) > 0 }
}

