provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "~/Projects/Courses/Terraform/aws/credentials"
  profile = "test-profile"
}

resource "aws_instance" "my_test_server" {
  ami = "ami-013f17f36f8b1fefb"
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntu-server"
  }
}
