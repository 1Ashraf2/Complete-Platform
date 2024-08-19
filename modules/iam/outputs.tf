output "ci_user_arn" {
  value = aws_iam_user.ci_user.arn
}

output "ci_user_access_key" {
  value = aws_iam_access_key.ci_user.id
  sensitive = true
}

output "ci_user_secret_key" {
  value = aws_iam_access_key.ci_user.secret
  sensitive = true
}