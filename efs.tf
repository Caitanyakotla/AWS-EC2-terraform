resource "aws_security_group" "TerraformEc2_security" {
  name        = "httpd-efs-sg"
  description = "Security group for efs storage"
  vpc_id      = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [aws_security_group.task2-sg.id]
  }
}
