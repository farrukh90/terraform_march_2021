resource "aws_key_pair" "deployer" {
  key_name   = "ec2-class-packer"
  public_key = file("~/.ssh/id_rsa.pub")
}