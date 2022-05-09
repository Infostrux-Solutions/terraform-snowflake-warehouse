resource "snowflake_warehouse" "warehouse" {
  name           = var.name
  comment        = var.comment
  warehouse_size = var.size
}

resource "snowflake_warehouse_grant" "grant" {
  count          = var.attach_grant_usage ? 1 : 0
  warehouse_name = snowflake_warehouse.warehouse.name
  privilege      = "USAGE"

  roles = var.roles

  with_grant_option = var.with_grant_option
}
