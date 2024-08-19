variable "public_subnets" {
  type = list(string)
}

variable "web_subnets" {
  type = list(string)
}

variable "dbs_subnets" {
  type = list(string)
}

variable "jenkins_subnets" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "db_name" {
  default = "onlineshop-db"
}

variable "environment" {
  type = string
}
