variable "username" {
  type        = string
  description = "The username for the IAM user"
}

variable "email" {
  type        = string
  description = "The email address of the user"
}

variable "policy" {
  type        = string
  description = "The policy to attach to the user (developer or admin)"
}