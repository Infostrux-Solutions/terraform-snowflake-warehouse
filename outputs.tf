output "warehouse_id" {
  value = [
    snowflake_warehouse.warehouse.*.id,
    snowflake_warehouse.warehouse_multi.*.id
  ]
}

output "warehouse_name" {
  value = [
    snowflake_warehouse.warehouse.*.name,
    snowflake_warehouse.warehouse_multi.*.name
  ]
}