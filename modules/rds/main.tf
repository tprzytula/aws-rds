resource "aws_s3_bucket" "test-bucket" {
  bucket = "my-tf-test-bucket-wow-test-tomasz"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}