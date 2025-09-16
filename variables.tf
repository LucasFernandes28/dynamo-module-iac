variable "name" {
  type        = string
  description = "Nome da tabela DynamoDB"
}

variable "hash_key" {
  type        = string
  description = "Chave primária da tabela DynamoDB"
}

variable "read_capacity" {
  type        = number
  description = "Capacidade de leitura da tabela DynamoDB"
}

variable "write_capacity" {
  type        = number
  description = "Capacidade de escrita da tabela DynamoDB"
}

variable "billing_mode" {
  type        = string
  description = "Modelo de cobrança"
  default     = "PAY_PER_REQUEST"
}

variable "deletion_protection_enabled" {
  type        = bool
  description = "Proteção contra deleção"
  default     = "true"
}

variable "tags" {
  type        = map(string)
  description = "Tags para aplicar nas tabelas"
  default     = {}
}
