output region {
    value = var.region
}
output "AZ" {
	value = data.aws_availability_zones.available.names[0]
}