output "table_name" {
  value = aws_dynamodb_table.this.name
}
output "billing_mode" {
  value = aws_dynamodb_table.this.billing_mode
}
output "deletion_protection_enabled" {
  value = aws_dynamodb_table.this.deletion_protection_enabled
}

output "bucket_arn" {
  value = aws_dynamodb_table.this.arn
}