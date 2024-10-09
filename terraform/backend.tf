terraform {
  backend "s3" {
    bucket         = "bisharsh-tf-state"  # Replace with your S3 bucket name
    key            = "infrastructure/go-web-app/terraform.tfstate"    # Replace with the path inside the bucket for the state file
    region         = "us-east-1"                  # Replace with the AWS region where your bucket resides (e.g., us-east-1)
    encrypt        = true                           # Enable encryption for the state file
    # dynamodb_table = "terraform-lock-table"         # Optional: Create a DynamoDB table to manage state locking
  }
}
