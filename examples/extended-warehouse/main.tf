module "warehouse" {
  source = "../../../terraform-sf-warehouse"

  name    = "warehouse_name"
  comment = "This is for describing the warehouse purpose."
  size    = "xsmall"

  initially_suspended   = true
  auto_resume           = true
  auto_suspend          = 300
  wait_for_provisioning = true

  min_cluster_count     = 1
  max_cluster_count     = 2
  max_concurrency_level = 0
  scaling_policy        = "STANDARD"

  resource_monitor = ""

  statement_timeout_in_seconds        = 172800
  statement_queued_timeout_in_seconds = 0

  attach_grant_usage = true
  roles              = ["SYSADMIN"]
  with_grant_option  = true
}
