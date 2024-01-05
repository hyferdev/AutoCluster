# Create hosted subzone records, hzoneid is set in Terraform Cloud
resource "aws_route53_record" "cluster_record" {
  zone_id = var.hzoneid
  name    = "cluster.${var.domain_name}"
  type    = "A"

  alias {
    name                   = aws_lb.cluster_nlb.dns_name
    zone_id                = aws_lb.cluster_nlb.zone_id
    evaluate_target_health = true
  }
}
