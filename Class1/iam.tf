resource "aws_iam_user" "tim" {
   name = "tim"
}

resource "aws_iam_user" "multiuser" {
	name = each.key
	for_each = toset([
	"bob",
	"sam",
	"lisa",
  "ben",
  "ron",
  "rick",
	])
}
