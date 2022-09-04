locals {
  env               = "dev"
  service_name      = "some-service"
  table_name_prefix = "be-${local.env}-${local.service_name}"
  table_name_users  = "${local.table_name_prefix}-users"
  regions           = ["us-east-1", "eu-central-1"]

  tags = {
    Name        = "${local.table_name_users}"
    Environment = local.env
    Application = local.service_name
    Service     = local.service_name
  }
}