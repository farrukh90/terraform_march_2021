resource "aws_key_pair" "asg-key-pair" {
  key_name   = "asg-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
}

