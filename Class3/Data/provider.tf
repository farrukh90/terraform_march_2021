provider "aws" {
    region = "us-east-2"
}

data "aws_availability_zones" "all" {}

output "AZ" {
	value = data.aws_availability_zones.all.names
}



output "AZ1" {
	value = data.aws_availability_zones.all.names[0]
}
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}



resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  availability_zone = data.aws_availability_zones.all.names[2]

  tags = {
    Name = "HelloWorld"
  }
}
