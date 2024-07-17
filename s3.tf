resource "aws_s3_bucket" "my_bucket" {
  bucket = "aws2024ac-17072024"
}

resource aws_s3_object "my_object" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "folders/test.txt"
  source = "./test.txt"
}