resource "aws_instance" "web1" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = {
    Name = "web-instance"
  }
}

