resource "aws_security_group" "vpn" {
  name        = "client-vpn-endpoint"
  description = "Security group for Client VPN endpoint"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.client_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "client-vpn-endpoint-sg"
  }
} 