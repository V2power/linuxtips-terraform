variable "name" {
  type = string
  description = "Name of the server"
}

variable "db" {
  type = string
  description = "Database name"
  default = "Database_Onyx"
}

variable "env" {
  type = string
  description = "Name of the environment"
}

variable "cria_db" {
  type = bool
  description = "Cria Banco de dados?"
  default = false
}