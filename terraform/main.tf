provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "techshop_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Atualize para uma AMI válida para sua região
  instance_type = "t2.micro"

  tags = {
    Name = "TechShop-App"
  }
}

output "instance_id" {
  value = aws_instance.techshop_instance.id
}
