resource "aws_instance" "container_host" {
  ami           = var.windows_server_ami
  instance_type = "t2.micro"
  
  key_name = "aws_key"
  tags = {
    Name = var.instance_name
  }
}