# Snowflake Warehouse Terraform Module
Terraform module which creates a Warehouse in Snowflake.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.33.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [snowflake_warehouse.warehouse](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/warehouse) | resource |
| [snowflake_warehouse.warehouse_multi](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/warehouse) | resource |
| [snowflake_warehouse_grant.grant](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/warehouse_grant) | resource |
| [snowflake_warehouse_grant.grant_multi](https://registry.terraform.io/providers/chanzuckerberg/snowflake/latest/docs/resources/warehouse_grant) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attach_grant_usage"></a> [attach\_grant\_usage](#input\_attach\_grant\_usage) | Create the grant usage at the same time. (true\|false) | `bool` | `false` | no |
| <a name="input_auto_resume"></a> [auto\_resume](#input\_auto\_resume) | Whether or not the warehouse will auto resume when there is a task (true\|false) | `bool` | `true` | no |
| <a name="input_auto_suspend"></a> [auto\_suspend](#input\_auto\_suspend) | The time in seconds to automatically suspend the warehouse. | `number` | `300` | no |
| <a name="input_comment"></a> [comment](#input\_comment) | Comment (description) to add to the warehouse. | `string` | `"Created by Terraform"` | no |
| <a name="input_initially_suspended"></a> [initially\_suspended](#input\_initially\_suspended) | Whether or not the warehouse is suspended upon creation (true\|false) | `bool` | `true` | no |
| <a name="input_max_cluster_count"></a> [max\_cluster\_count](#input\_max\_cluster\_count) | Largest cluster size to provision. | `number` | `null` | no |
| <a name="input_max_concurrency_level"></a> [max\_concurrency\_level](#input\_max\_concurrency\_level) | Object parameter that specifies the concurrency level for SQL statements (i.e. queries and DML) executed by a warehouse. | `number` | `0` | no |
| <a name="input_min_cluster_count"></a> [min\_cluster\_count](#input\_min\_cluster\_count) | Smallest cluster size to provision. | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name to apply to the Snowflake warehouse. | `string` | n/a | yes |
| <a name="input_resource_monitor"></a> [resource\_monitor](#input\_resource\_monitor) | Specifies the name of a resource monitor that is explicitly assigned to the warehouse. | `string` | `null` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | A list of roles that will be granted usage on the warehouse. | `list(string)` | `[]` | no |
| <a name="input_scaling_policy"></a> [scaling\_policy](#input\_scaling\_policy) | Specifies the policy for automatically starting and shutting down clusters in a multi-cluster warehouse running in Auto-scale mode. (STANDARD\|ECONOMY) | `string` | `null` | no |
| <a name="input_size"></a> [size](#input\_size) | The size of warehouse to provision for query processing. | `string` | `"xsmall"` | no |
| <a name="input_statement_queued_timeout_in_seconds"></a> [statement\_queued\_timeout\_in\_seconds](#input\_statement\_queued\_timeout\_in\_seconds) | Object parameter that specifies the time, in seconds, a SQL statement (query, DDL, DML, etc.) can be queued on a warehouse before it is canceled by the system. | `number` | `0` | no |
| <a name="input_statement_timeout_in_seconds"></a> [statement\_timeout\_in\_seconds](#input\_statement\_timeout\_in\_seconds) | Specifies the time, in seconds, after which a running SQL statement (query, DDL, DML, etc.) is canceled by the system. | `number` | `172800` | no |
| <a name="input_wait_for_provisioning"></a> [wait\_for\_provisioning](#input\_wait\_for\_provisioning) | Specifies whether the warehouse, after being resized, waits for all the servers to provision before executing any queued or new queries. (true\|false) | `bool` | `null` | no |
| <a name="input_with_grant_option"></a> [with\_grant\_option](#input\_with\_grant\_option) | When this is set to true, allows the recipient role to grant the privileges to other roles. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_warehouse_id"></a> [warehouse\_id](#output\_warehouse\_id) | The Warehouse resource ID. |
| <a name="output_warehouse_name"></a> [warehouse\_name](#output\_warehouse\_name) | The Warehouse resource name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Authors
The module is maintained by @mvanzanten with the help of @eyloninfostrux and @charlesInfostrux 
