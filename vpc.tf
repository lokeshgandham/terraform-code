provider "aws" {
  region     = "us-east-1"
  access_key = " "
  secret_key = " "
}
#creating VPC
resource "aws_vpc" "demovpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name="python VPC"
  }
}
