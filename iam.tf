resource "aws_iam_user" "lbb" {
  name = "loadbalancer"
  path = "/system/"

  tags = {
    tag-key = "lbb user"
  }
}
