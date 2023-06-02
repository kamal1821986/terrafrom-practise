resource "aws_iam_user" "abc" {
  name = "loadbalancerabc"  
  path = "/system/"  
  tags = {
    tag-key = "abc user"
  }
}
