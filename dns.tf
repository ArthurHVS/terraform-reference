
resource "aws_route53_zone" "main_hz" {
  name          = "bemtevi.cloud"
  force_destroy = true
}

resource "aws_route53_record" "main_ns" {
  zone_id = aws_route53_zone.main_hz.zone_id
  name    = "dev.bemtevi.cloud"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.main_hz.name_servers
}
