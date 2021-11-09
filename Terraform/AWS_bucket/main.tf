resource "aws_s3_bucket" "nidio"{
  bucket = "balde-com-terraform"
  acl    = "private"
}