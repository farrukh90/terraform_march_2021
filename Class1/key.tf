resource "aws_key_pair" "deployer" {
  key_name   = "terraform_machine"
  public_key =  file("~/.ssh/id_rsa.pub")
}

# resource "aws_key_pair" "deployer2" {
#   key_name   = "terraform_machine2"
#   public_key =  file("~/.ssh/id_rsa.pub")
# }