resource "aws_s3_bucket" "my_bucket" {
  bucket = "aws2024ac-17072024"
}

resource aws_s3_object "my_object" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "folders/test.txt"
  source = "./test.txt"
}

data "local_file" "name" {
  filename = test.txt
  source = aws_s3_object.my_object.content
}

resource "aws_s3_bucket" "my_bucket1" {
  bucket = "aws2024ac-17072024-1"
}

resource aws_s3_object "my_object1" {
  bucket = aws_s3_bucket.my_bucket1.bucket
  key    = "folders/test.txt"
  source = data.local_file.name.filename
}

