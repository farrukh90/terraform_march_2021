resource "aws_instance" "web" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.deployer.key_name
  availability_zone = "us-east-1f"
  user_data     = file("userdata")
}