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