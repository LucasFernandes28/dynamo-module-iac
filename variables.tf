variable "name" {
  type        = string
  description = "Nome da tabela DynamoDB"
}

variable "hash_key" {
  type        = string
  description = "Chave primária da tabela DynamoDB"
}

variable "attributes" {
  type = list(object({
    name = string
    type = string # S = String, N = Number, B = Binary
  }))
  description = "Lista de atributos da tabela"
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
