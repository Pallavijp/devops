resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket8910"
  acl    = "private"              

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
