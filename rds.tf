
resource "aws_instance" "instance1" {
  ami                         = "ami-066f98455b59ca1ee"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "local"
  vpc_security_group_ids     = ["sg-06751d2bc69d6b98b"]
  subnet_id                   = "subnet-09b0644f6da29e605"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "chakry"
  }
}
