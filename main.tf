resource "snowflake_warehouse" "warehouse" {
  count = var.max_cluster_count == null ? 1 : 0

  name           = var.name
  comment        = var.comment
  warehouse_size = var.size

  initially_suspended   = var.initially_suspended
  auto_resume           = var.auto_resume
  auto_suspend          = var.auto_suspend
  wait_for_provisioning = var.wait_for_provisioning

  resource_monitor = var.resource_monitor

  statement_timeout_in_seconds        = var.statement_timeout_in_seconds
  statement_queued_timeout_in_seconds = var.statement_queued_timeout_in_seconds

}

resource "snowflake_warehouse" "warehouse_multi" {
  count = var.max_cluster_count != null ? 1 : 0

  name           = var.name
  comment        = var.comment
  warehouse_size = var.size

  initially_suspended   = var.initially_suspended
  auto_resume           = var.auto_resume
  auto_suspend          = var.auto_suspend
  wait_for_provisioning = var.wait_for_provisioning

  min_cluster_count     = var.min_cluster_count
  max_cluster_count     = var.max_cluster_count
  max_concurrency_level = var.max_concurrency_level
  scaling_policy        = var.scaling_policy

  resource_monitor = var.resource_monitor

  statement_timeout_in_seconds        = var.statement_timeout_in_seconds
  statement_queued_timeout_in_seconds = var.statement_queued_timeout_in_seconds

}

resource "snowflake_warehouse_grant" "grant" {
  count = var.max_cluster_count == null && var.attach_grant_usage == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse[0].name
  privilege      = "USAGE"

  roles = var.roles

  enable_multiple_grants = true
  with_grant_option      = var.with_grant_option
}

resource "snowflake_warehouse_grant" "grant_multi" {
  count = var.max_cluster_count != null && var.attach_grant_usage == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse_multi[0].name
  privilege      = "USAGE"

  roles = var.roles

  enable_multiple_grants = true
  with_grant_option      = var.with_grant_option
}
