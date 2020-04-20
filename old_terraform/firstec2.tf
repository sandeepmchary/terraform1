provider "aws" {
  access_key= "AKIAS47BM5EZMAAO4EF2"
  secret_key= "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"
  region= "us-east-2"
}

resource "aws_instance" "myfirst" {
  ami= "ami-01e36b7901e884a10"
  instance_type = "t2.micro"
  key_name = "samdevops"
  tags = {
      Name = "myfirst"
  }
}
# here we use terraform init
# terrform plan . >> plan.txt
# terraform apply .
resource "aws_security_group" "allow_all" {
  name = "allow_all"
  description = "Allow all traffic"
  vpc_id = "vpc-2d13ea46"

  ingress {
      description = "Allowing the traffic"
      from_port= 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
      description = "outgoing traffic"
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
