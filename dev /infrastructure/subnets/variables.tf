variable "public_subnets" {
    type = list(string)
    default = ["172.31.70.0/24", "172.31.71.0/24"]
}

variable "web_subnets" {
    type = list(string)
    default = ["172.31.73.0/24" , "172.31.74.0/24"]
}

variable "dbs_subnets" {
    type = list(string)
    default = ["172.31.75.0/24", "172.31.76.0/24"]   
}    

variable "jenkins_subnets" {
  type    = list(string)
  default = ["172.31.76.0/24", "172.31.77.0/24"]
}

variable "environment" {
  type = string
  default = "dev"
}

variable "availability_zones" {
  type = list(string)
  default = ["eu-west-1a", "eu-west-1b"]
}
