resource "aws_key_pair" "deployer" {
  key_name   = "terraform_machine"
  public_key =  file("~/.ssh/id_rsa.pub")
}