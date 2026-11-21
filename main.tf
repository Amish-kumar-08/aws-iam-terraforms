resource "aws_iam_user" "s3_reader" {
  name = var.iam_username
}

resource "aws_iam_policy" "s3_read" {
  name        = "${var.iam_username}-s3-read-policy"
  description = "Allow read-only access to a specific S3 bucket"
  policy      = var.s3_read_policy
}

resource "aws_iam_user_policy_attachment" "s3_read_attach" {
  user       = aws_iam_user.s3_reader.name
  policy_arn = aws_iam_policy.s3_read.arn
}
