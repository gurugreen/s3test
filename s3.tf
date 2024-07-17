resource "aws_s3_bucket" "my_bucket" {
  bucket = "aws2024ac-17072024"
  acl    = "private"
}

resource "aws_s3_bucket_object" "my_object" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "./test.txt"
  source = "folders/file.txt"
  acl    = "private"
}