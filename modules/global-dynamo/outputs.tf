output "dynamo_table_names" {
  value = {
    users = local.table_name_users
  }
}