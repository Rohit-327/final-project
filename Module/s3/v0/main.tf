resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name != "" ? var.bucket_name : "tfstate-${random_id.bucket_suffix.hex}"
  acl    = "private"

  versioning {
    enabled = true
  }
}
 