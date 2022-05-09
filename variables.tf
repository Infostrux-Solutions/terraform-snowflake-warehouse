# Warehouse
variable "name" {
  type        = string
  description = "The name to apply to the Snowflake warehouse."
}

variable "comment" {
  type        = string
  description = "Comment (description) to add to the warehouse."
  default     = "Created by Terraform"
}

variable "size" {
  type        = string
  description = "The size of warehouse to provision for query processing."
  default     = "xsmall"
}

variable "attach_grant_usage" {
  type        = bool
  description = "Create the grant usage at the same time. (true|false)"
  default     = false
}

variable "roles" {
  type        = list(string)
  description = "A list of roles that will be granted usage on the warehouse."
  default     = []
}

variable "with_grant_option" {
  type        = bool
  description = "When this is set to true, allows the recipient role to grant the privileges to other roles."
  default     = false
}

variable "initially_suspended" {
  type        = bool
  description = "Whether or not the warehouse is suspended upon creation (true|false)"
  default     = true
}
variable "auto_resume" {
  type        = bool
  description = "Whether or not the warehouse will auto resume when there is a task (true|false)"
  default     = true
}
variable "auto_suspend" {
  type        = number
  description = "The time in seconds to automatically suspend the warehouse."
  default     = 300
}
variable "wait_for_provisioning" {
  type        = bool
  description = "Specifies whether the warehouse, after being resized, waits for all the servers to provision before executing any queued or new queries. (true|false)"
  default     = null
}
variable "min_cluster_count" {
  type        = number
  description = "Smallest cluster size to provision."
  default     = null
}
variable "max_cluster_count" {
  type        = number
  description = "Largest cluster size to provision."
  default     = null
}
variable "max_concurrency_level" {
  type        = number
  description = "Object parameter that specifies the concurrency level for SQL statements (i.e. queries and DML) executed by a warehouse."
  default     = 0
}
variable "scaling_policy" {
  type        = string
  description = "Specifies the policy for automatically starting and shutting down clusters in a multi-cluster warehouse running in Auto-scale mode. (STANDARD|ECONOMY)"
  default     = null
}
variable "resource_monitor" {
  type        = string
  description = "Specifies the name of a resource monitor that is explicitly assigned to the warehouse."
  default     = null
}
variable "statement_timeout_in_seconds" {
  type        = number
  description = "Specifies the time, in seconds, after which a running SQL statement (query, DDL, DML, etc.) is canceled by the system."
  default     = 172800
}
variable "statement_queued_timeout_in_seconds" {
  type        = number
  description = "Object parameter that specifies the time, in seconds, a SQL statement (query, DDL, DML, etc.) can be queued on a warehouse before it is canceled by the system."
  default     = 0
}
