module "warehouse" {
    source  = "../terraform-sf-warehouse"

    name        = "warehouse_name"
    description = "This is for describing the warehouse purpose."
    size        = "xsmall"

    attach_grant_usage = true
    roles              = ["SYSADMIN"]
    with_grant_option  = true
}