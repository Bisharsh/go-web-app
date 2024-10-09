terraform {
  backend "s3" {
    bucket         = "bisharsh-tf-state"  
    key            = "infrastructure/go-web-app/terraform.tfstate"    
    region         = "us-east-1"                  
    encrypt        = true                         
    # dynamodb_table = "terraform-lock-table"     
  }
}
