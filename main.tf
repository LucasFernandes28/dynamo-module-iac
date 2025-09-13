resource "aws_dynamodb_table" "this" {
  for_each = { for tbl in var.tables : tbl.name => tbl }

  name         = each.value.name
  hash_key     = each.value.hash_key
  billing_mode = "PROVISIONED"
  read_capacity  = each.value.read_capacity
  write_capacity = each.value.write_capacity

  attribute {
    name = each.value.hash_key
    type = "S"
  }

  tags = var.tags
}
