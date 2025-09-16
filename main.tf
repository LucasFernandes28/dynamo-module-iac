resource "aws_dynamodb_table" "this" {

  name         = var.name
  hash_key     = var.hash_key
  billing_mode = var.billing_mode
  deletion_protection_enabled = var.deletion_protection_enabled

  dynamic "attribute" {
    for_each = var.attributes
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  tags = merge(
    {
      Name = var.name
    },
    var.tags
  )
}
