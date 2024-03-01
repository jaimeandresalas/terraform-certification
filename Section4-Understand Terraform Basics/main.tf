provider "aws" {
  access_key = "my-access-key"
  secret_key = "my-secret"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami                    = "ami-0c55b159cbfafe1f0"
  instance_type          = "t2.micro"
  subnet_id              = "SUBNET_ID"
  vpc_security_group_ids = ["SECURITY_GROUP_ID"]
  tags = {
    "Identity" = "Terraform"
  }
}
