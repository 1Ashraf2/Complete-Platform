resource "aws_subnet" "public_subnet" {
  vpc_id            = data.aws_vpc.default.id
  cidr_block        = element(var.public_subnets, count.index)
  count             = length(var.public_subnets)
  availability_zone = element(var.availability_zones, count.index)

  map_public_ip_on_launch = true

  tags = {
    Name = "Safe-Storage-${var.environment}-public-${count.index + 1}"
  }
}

resource "aws_subnet" "web_subnet" {
  vpc_id            = data.aws_vpc.default.id
  cidr_block        = element(var.web_subnets, count.index)
  count             = length(var.web_subnets)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "Web-Server-${var.environment}-${count.index + 1}"
  }
}

resource "aws_subnet" "dbs_subnet" {
  vpc_id            = data.aws_vpc.default.id
  count             = length(var.dbs_subnets)
  cidr_block        = element(var.dbs_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "Database-${var.environment}-${count.index + 1}"
  }
}

resource "aws_subnet" "jenkins_subnet" {
  vpc_id            = data.aws_vpc.default.id
  count             = length(var.jenkins_subnets)
  cidr_block        = element(var.jenkins_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "Jenkine-${var.environment}-${count.index + 1}"
  }
}