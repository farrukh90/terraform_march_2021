resource "aws_launch_template" "example" {
  name_prefix          = "example"
  image_id             = data.aws_ami.image.id
  instance_type        = var.instance_type
  security_group_names = [aws_security_group.asg-sec-group.name]
  key_name             = aws_key_pair.asg-key-pair.key_name
  user_data            = filebase64("${path.module}/userdata.sh")
}
