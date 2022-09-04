module "global-dynamo-v2" {
  source = "../global-dynamo/modules/regional-dynamo"

  table_name_users = local.table_name_users
  env              = local.env
  tags             = local.tags
  service_name     = local.service_name
  regions          = local.regions
}
