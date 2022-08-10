terraform {
  required_version = ">= 0.13.1"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.40.0"
    }
  }
}

provider "snowflake" {
  role = "sysadmin"
}

# Commented out areas are reserved for enterprise and up
module "warehouse" {
  source = "../../"

  name    = "warehouse_name"
  comment = "This is for describing the warehouse purpose."
  size    = "xsmall"

  initially_suspended = true
  auto_resume         = true
  auto_suspend        = 300
  # wait_for_provisioning = true

  # min_cluster_count     = 1
  # max_cluster_count     = 2
  max_concurrency_level = 0
  # scaling_policy        = "STANDARD"

  resource_monitor = ""

  statement_timeout_in_seconds        = 172800
  statement_queued_timeout_in_seconds = 0

  attach_grant_usage      = true
  usage_roles             = ["SYSADMIN"]
  usage_with_grant_option = true

  attach_grant_modify      = true
  modify_roles             = ["SYSADMIN"]
  modify_with_grant_option = true

  attach_grant_ownership      = true
  ownership_roles             = ["SYSADMIN"]
  ownership_with_grant_option = true

  attach_grant_monitor      = true
  monitor_roles             = ["SYSADMIN"]
  monitor_with_grant_option = true

  attach_grant_operate      = true
  operate_roles             = ["SYSADMIN"]
  operate_with_grant_option = true
}
