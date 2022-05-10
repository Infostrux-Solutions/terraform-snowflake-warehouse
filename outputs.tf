output "warehouse_id" {
  value = [
    snowflake_warehouse.warehouse.*.id,
    snowflake_warehouse.warehouse_multi.*.id
  ]
  description = "The Warehouse resource ID."
}

output "warehouse_name" {
  value = [
    snowflake_warehouse.warehouse.*.name,
    snowflake_warehouse.warehouse_multi.*.name
  ]
  description = "The Warehouse resource name."
}
