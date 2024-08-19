output "vpc_id" {
  value = data.aws_vpc.default.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet[*].id
}

output "web_app_subnets" {
  value = aws_subnet.web_subnet[*].id
}

output "dbs_subnets" {
  value = aws_subnet.dbs_subnet[*].id
}

output "jenkins_subnets" {
  value = aws_subnet.jenkins_subnet[*].id
}

output "web_sgs" {
  value = aws_security_group.web_app.id
}

output "dbs_sgs" {
  value = aws_security_group.dbs.id
}

output "jenkins_master_sg" {
  value = aws_security_group.jenkins_master.id
}

output "jenkins_slave_sg" {
  value = aws_security_group.jenkins_slave.id
}  