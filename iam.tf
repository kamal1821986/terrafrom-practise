resource "aws_iam_user" "lbc" {
  name = "loadbalancer"  
  path = "/system/"  
  tags = {
    tag-key = "lbc user"
  }
}
