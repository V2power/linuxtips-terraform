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

variable "instancias" {
  type = set(string)
  description = "Lista das instâncias a serem criadas"
}