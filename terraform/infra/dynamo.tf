resource "aws_dynamodb_table" "my_table" {
  name         = "${var.env}-my-tf-test-app-dynamodb-table-first"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "userID"
  
  attribute {
    name = "userID"
    type = "S"
  }

  tags = {
    Name = "${var.env}-my-tf-test-app-dynamodb-table-first"
    Environment = var.env
  }
}