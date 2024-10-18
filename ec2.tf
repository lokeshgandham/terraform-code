#creating ec2 instance
resource "aws_instance" "wordpress1" {
  ami           = "ami-0a5c3558529277641"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  user_data = file("data.sh")
  key_name = "wordpress"
  vpc_security_group_ids= [aws_security_group.group2.id]
  tags = {
    Name = "wordpress1"
  }
}
