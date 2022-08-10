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

resource "snowflake_warehouse_grant" "grant_usage" {
  count = var.max_cluster_count == null && var.attach_grant_usage == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse[0].name
  privilege      = "USAGE"

  roles = var.usage_roles

  enable_multiple_grants = true
  with_grant_option      = var.usage_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_usage_multi" {
  count = var.max_cluster_count != null && var.attach_grant_usage == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse_multi[0].name
  privilege      = "USAGE"

  roles = var.usage_roles

  enable_multiple_grants = true
  with_grant_option      = var.usage_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_modify" {
  count = var.max_cluster_count == null && var.attach_grant_modify == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse[0].name

  privilege = "MODIFY"

  roles = var.modify_roles

  enable_multiple_grants = true
  with_grant_option      = var.modify_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_modify_multi" {
  count = var.max_cluster_count != null && var.attach_grant_modify == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse_multi[0].name

  privilege = "MODIFY"

  roles = var.modify_roles

  enable_multiple_grants = true
  with_grant_option      = var.modify_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_operate" {
  count = var.max_cluster_count == null && var.attach_grant_operate == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse[0].name

  privilege = "OPERATE"

  roles = var.operate_roles

  enable_multiple_grants = true
  with_grant_option      = var.operate_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_operate_multi" {
  count = var.max_cluster_count != null && var.attach_grant_operate == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse_multi[0].name

  privilege = "OPERATE"

  roles = var.operate_roles

  enable_multiple_grants = true
  with_grant_option      = var.operate_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_ownership" {
  count = var.max_cluster_count == null && var.attach_grant_ownership == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse[0].name

  privilege = "OWNERSHIP"

  roles = var.ownership_roles

  enable_multiple_grants = true
  with_grant_option      = var.ownership_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_ownership_multi" {
  count = var.max_cluster_count != null && var.attach_grant_ownership == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse_multi[0].name

  privilege = "OWNERSHIP"

  roles = var.ownership_roles

  enable_multiple_grants = true
  with_grant_option      = var.ownership_with_grant_option
}


resource "snowflake_warehouse_grant" "grant_monitor" {
  count = var.max_cluster_count == null && var.attach_grant_monitor == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse[0].name

  privilege = "MONITOR"

  roles = var.monitor_roles

  enable_multiple_grants = true
  with_grant_option      = var.monitor_with_grant_option
}

resource "snowflake_warehouse_grant" "grant_monitor_multi" {
  count = var.max_cluster_count != null && var.attach_grant_monitor == true ? 1 : 0

  warehouse_name = snowflake_warehouse.warehouse_multi[0].name

  privilege = "MONITOR"

  roles = var.monitor_roles

  enable_multiple_grants = true
  with_grant_option      = var.monitor_with_grant_option
}
