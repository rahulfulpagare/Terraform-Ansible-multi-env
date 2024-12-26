resource "aws_s3_bucket" "my-test-app-bucket" {
  bucket = "${var.env}-my-tf-test-app-bucket-first"  # Interpolation is correct for bucket name

  tags = {
    Name        = "${var.env}-my-tf-test-app-bucket-first"  # Corrected for tag
    Environment = var.env  # Removed interpolation quotes as it should be a variable reference
  }
}
