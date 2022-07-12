provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0b4615cdf94395cda"
  #security_groups = [aws_security_group.TerraformEc2_security.name]
  key_name = "krishnakotla-key"

  tags = {
    Name        = "var.instance_name"
    Department  = "Cloud-Devops"
    Environment = "dev"
  }
}