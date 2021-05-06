resource "aws_instance" "web" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t3.micro"
  user_data     = file("userdata")
  tags = {
    Name = "DevOps"
    Team = "IT"
  }
}
