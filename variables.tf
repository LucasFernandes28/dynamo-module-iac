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
