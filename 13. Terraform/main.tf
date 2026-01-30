terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1" # your preferred region
}

# Security Group for HTTP, Prometheus & Grafana
resource "aws_security_group" "monitoring_sg" {
  name        = "monitoring-sg"
  description = "Allow Prometheus (9090), Grafana (3000), and SSH (22)"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Limit this to your IP for security
  }

  ingress {
    description = "Prometheus"
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Grafana"
    from_port   = 3000
    to_port     = 3000
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
    Name = "monitoring-sg"
  }
}

# EC2 Instance for Prometheus & Grafana
resource "aws_instance" "monitoring_ec2" {
  ami           = "ami-01f23391a59163da9"
  instance_type = "t2.micro"
  key_name      = "EC2-Monitoring-login" # Key pair name

  vpc_security_group_ids = [aws_security_group.monitoring_sg.id]


  user_data = <<-EOF
                sudo apt-get update

                EOF

  tags = {
    Name = "Prometheus-Grafana-Server"
  }
}