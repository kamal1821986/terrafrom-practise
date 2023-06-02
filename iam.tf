resource "aws_iam_user" "abc" {
  name = "loadbalancer"  
  path = "/system/"  
  tags = {
    tag-key = "abc user"
  }
}
