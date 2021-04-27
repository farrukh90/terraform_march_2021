resource "aws_iam_role" "terraform_admin3" {
	name = "terraform_admin3"
	assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Action": "sts:AssumeRole",
"Principal": {
"Service": "ec2.amazonaws.com"
},
"Effect": "Allow",
"Sid": ""
}
]
}
EOF
}



resource "aws_iam_policy" "policy4" {
  name = "test-policy4"
  description = "A test policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
{
  "Action": [
  "ec2:Describe*"
],
  "Effect": "Allow",
  "Resource": "*"
    }
  ]
}
EOF
}


resource "aws_iam_role_policy_attachment" "test-attach" {
  role = aws_iam_role.terraform_admin3.name
  policy_arn = aws_iam_policy.policy4.arn
}
