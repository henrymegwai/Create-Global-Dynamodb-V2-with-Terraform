resource "aws_dynamodb_table" "users" {

  name = var.table_name_users

  hash_key = "userId"

  attribute {
    name = "userId"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"

  lifecycle {
    ignore_changes = [
      read_capacity,
      write_capacity
    ]

    prevent_destroy = false
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled = true
  }

  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  tags = var.tags
  dynamic "replica" {
    for_each = [
      for region in var.regions : region
    ]

    content {
      region_name = replica.value
    }
  }
}
