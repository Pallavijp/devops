# Create IAM User
resource "aws_iam_user" "example_user" {
  name = "user2"
}

# Attach Inline Policy to the User
resource "aws_iam_user_policy" "example_user_policy" {
  name = "user-policy"
  user = aws_iam_user.example_user.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "s3:CreateBucket",
          "s3:ListBucket",
          "s3:DeleteObject"
        ],
        Resource = "arn:aws:s3:::*"
      }
    ]
  })
}
