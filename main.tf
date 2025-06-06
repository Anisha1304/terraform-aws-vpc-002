provider "aws" {
  region = "ap-south-1" # Set your correct AWS region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  availability_zone       = "ap-south-1a" 
}

resource "aws_instance" "main" {
  ami           = "ami-062f0cc54dbfd8ef1" # Valid AMI for ap-south-1
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
}