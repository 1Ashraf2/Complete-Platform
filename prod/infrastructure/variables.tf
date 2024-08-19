variable "public_subnets" {
  type    = list(string)
  default = ["172.31.80.0/24", "172.31.81.0/24"]
}

variable "web_subnets" {
  type    = list(string)
  default = ["172.31.82.0/24", "172.31.83.0/24"]
}

variable "dbs_subnets" {
  type    = list(string)
  default = ["172.31.84.0/24", "172.31.85.0/24"]
}

variable "jenkins_subnets" {
  type    = list(string)
  default = ["172.31.86.0/24", "172.31.87.0/24"]
}

variable "availability_zones" {
  type    = list(string)
  default = ["eu-west-1a", "eu-west-1b"]
}

variable "db_name" {
  default = "onlineshop"
}

variable "environment" {
  type    = string
  default = "prod"
}