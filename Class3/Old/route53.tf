resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.name
  type    = "A"
  ttl     = "60"
  records = [aws_instance.web.public_ip]
}
