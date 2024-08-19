resource "aws_ec2_client_vpn_endpoint" "vpn" {
  description            = "Client VPN endpoint"
  server_certificate_arn = var.server_certificate_arn
  client_cidr_block      = var.client_cidr_block

  authentication_options {
    type                       = "certificate-authentication"
    root_certificate_chain_arn = var.root_certificate_chain_arn
  }

  connection_log_options {
    enabled = false
  }

  dns_servers = ["8.8.8.8", "8.8.4.4"]

  vpc_id             = var.vpc_id
  security_group_ids = [aws_security_group.vpn.id]
}

resource "aws_ec2_client_vpn_network_association" "vpn" {
  client_vpn_endpoint_id = aws_ec2_client_vpn_endpoint.vpn.id
  subnet_id              = var.private_subnet_ids[0]
}

resource "aws_ec2_client_vpn_authorization_rule" "vpn" {
  client_vpn_endpoint_id = aws_ec2_client_vpn_endpoint.vpn.id
  target_network_cidr    = var.vpc_cidr
  authorize_all_groups   = true
}

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