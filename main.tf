resource "aws_dynamodb_table" "this" {

  name         = var.name
  hash_key     = var.hash_key
  billing_mode = var.billing_mode
  deletion_protection_enabled = var.deletion_protection_enabled
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = merge(
    {
      Name = var.name
    },
    var.tags
  )
}
