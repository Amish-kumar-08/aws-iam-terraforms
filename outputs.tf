output "iam_user_name" {
  description = "Created IAM username"
  value       = aws_iam_user.s3_reader.name
}

output "iam_user_arn" {
  description = "Created IAM user ARN"
  value       = aws_iam_user.s3_reader.arn
}

output "iam_policy_arn" {
  description = "Created IAM policy ARN"
  value       = aws_iam_policy.s3_read.arn
}
