data "databricks_aws_assume_role_policy" "aws_assume_role_policy_lookup" {
  for_each = var.aws_assume_role_policy_lookup

  external_id           = each.value.external_id
  aws_partition         = each.value.aws_partition
  databricks_account_id = each.value.databricks_account_id
  for_log_delivery      = each.value.for_log_delivery
}

