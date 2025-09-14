resource "aws_dynamodb_table" "this" {

  name         = var.name
  hash_key     = var.hash_key
  billing_mode = "PROVISIONED"
  deletion_protection_enabled = true
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = var.hash_key
    type = "S"
  }

  tags = var.tags
}
