# resource "aws_s3_bucket" "dev4" {
#   bucket = "terraform-aws-dev4"
# 
#   tags = {
#     Name        = "terraform-aws-dev4"
#   }
# }
# 
# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.dev4.id
#   acl    = "private"
# }

resource "aws_s3_bucket" "homologacao" {
  bucket = "terraform-aws-homologacao"

  tags = {
    Name        = "terraform-aws-homologacao"
  }
}

resource "aws_s3_bucket_acl" "homologacao" {
  bucket = aws_s3_bucket.homologacao.id
  acl    = "private"
}