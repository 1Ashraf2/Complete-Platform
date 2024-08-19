# Create a security group for the EC2 instance
resource "aws_security_group" "web_app" {
  name        = "allow_web_traffic"
  description = "Allow inbound web traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_web_traffic"
  }
}

resource "aws_security_group" "dbs" {
  name        = "allow_traffic_from_web_app"
  description = "Allow inbound web traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Only allow connection from wep app"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "traffic_from_web_app"
  }
}

resource "aws_security_group_rule" "allow_ssh_from_web_app" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.web_app.id
  source_security_group_id = aws_security_group.dbs.id
}

resource "aws_security_group" "jenkins_master" {
  name        = "allow_jenkins_traffic"
  description = "Allow inbound jenkins traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Allow inbound jenkins traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow SSH traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_HTTP_traffic"
  }
}

resource "aws_security_group_rule" "allow_master_to_slave" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.jenkins_master.id
  source_security_group_id = aws_security_group.jenkins_slave.id
}

resource "aws_security_group" "jenkins_slave" {
  name        = "allow_SSH_traffic"
  description = "Allow inbound jenkins traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Allow inbound jenkins traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_SSH_traffic"
  }
}
