provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-05d2438ca66594916"
  instance_type = "t2.micro"
  key_name = "ChrisEvans"
  tags = {
    Name = "Terrafom-Instance"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install neofetch -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              sudo apt install docker.io -y
              sudo systemctl start docker 
              sudo systemctl enable docker
              EOF  
}