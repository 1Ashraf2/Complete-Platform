resource "aws_iam_user" "ci_user" {
  name = "ci-cd-user"
  path = "/system/"

  tags = {
    Description = "IAM user for CI/CD pipeline"
  }
}

resource "aws_iam_access_key" "ci_user" {
  user = aws_iam_user.ci_user.name
}

resource "aws_iam_user_policy" "ci_user_policy" {
  name = "ci-cd-user-policy"
  user = aws_iam_user.ci_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "rds:*",
          "s3:*",
          "vpc:*",
          "iam:PassRole",
          "elasticloadbalancing:*"
        ]
        Resource = "*"
      },
      {
        Effect = "Deny"
        Action = [
          "iam:CreateUser",
          "iam:DeleteUser",
          "iam:CreatePolicy",
          "iam:DeletePolicy"
        ]
        Resource = "*"
      }
    ]
  })
}