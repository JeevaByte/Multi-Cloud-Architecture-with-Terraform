# AWS EC2 Instance
resource "aws_instance" "web_server" {
  provider      = aws.primary
  ami           = var.aws_ami
  instance_type = var.instance_size
  subnet_id     = var.aws_subnet_id

  tags = {
    Environment = var.environment
  }
}


