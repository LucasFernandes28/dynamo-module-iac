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

variable "tables" {
  type = list(object({
    name           = string
    hash_key       = string
    read_capacity  = number
    write_capacity = number
  }))
}

variable "tags" {
  type        = map(string)
  description = "Tags para aplicar nas tabelas"
  default     = {}
}
