resource "aws_launch_template" "web" {
  name_prefix   = "web-"
  image_id      = var.ami_id
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.web.id]

  user_data = base64encode(<<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd php php-mysqlnd
              systemctl start httpd
              systemctl enable httpd
              echo "<?php
              \$servername = '${var.db_address}';
              \$username = '${var.db_username}';
              \$password = '${var.db_password}';
              \$dbname = '${var.db_name}';
             // Create connection
              \$conn = new mysqli(\$servername, \$username, \$password, \$dbname);

              // Check connection
              if (\$conn->connect_error) {
                die('Connection failed: ' . \$conn->connect_error);
              }
              echo 'Connected successfully to the database. Welcome to our Online Shop!';
              ?>" > /var/www/html/index.php
              EOF
  )

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "web-server"
    }
  }             