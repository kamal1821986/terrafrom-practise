resource "aws_iam_user" "kamal" {
  name = "kamal"  
  path = "/system/"  
  tags = {
    tag-key = "kamal user"
  }
}

resource "aws_instance" "kkec2" {
 ami = "ami-0715c1897453cabd1"
 instance_type = "t2.micro"
}


resource "aws_s3_bucket" "kkbucket" {
  bucket = "my-tf-test-kk-bucket"
  tags = {
    Name = "kk bucket"
    Environment = "Dev"
    }
   }
   
 
resource "aws_security_group" "kkec2-sg" {
    name = "kkmyec2-sg"
    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}



