resource "aws_iam_user" "tim" {
   name = "tim"
}

resource "aws_iam_group" "developers" {
    name = "developers"
}
