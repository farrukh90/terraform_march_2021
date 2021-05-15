resource "aws_autoscaling_group" "example" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = var.config["desired_capacity"]
  max_size           = var.config["max_size"]
  min_size           = var.config["min_size"]
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.example.id
      }
      override {
        instance_type     = "c4.large"
        weighted_capacity = "3"
      }
      override {
        instance_type     = "c3.large"
        weighted_capacity = "2"
      }
    }
  }
}