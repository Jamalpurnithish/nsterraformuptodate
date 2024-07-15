variable "aws_region" {
    description = "The region in which to create the infrastructure"
    type = string
    nullable = false
    default = "ap-south-1" #here we need to define either ap-south-1 or ap-south-2 if i give other region will get error
    validation {
      condition = var.aws_region =="ap-south-1" || var.aws_region =="ap-south-2"
      error_message = "The variable 'aws_region' must be one of the following regions: ap-south-1, ap-south-2"
    }

  
}

provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_s3_bucket" "basbas" {
    bucket = "kkvidvkdiacef"
    
  
}
