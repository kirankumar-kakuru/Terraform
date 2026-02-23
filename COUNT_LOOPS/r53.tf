# Create a new A record
resource "aws_route53_record" "www" {
    count = 3
    zone_id = var.zone_id
    #interpolation
    name    = "${var.instance[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.example[count.index].private_ip] # List of IP addresses for the A record
}