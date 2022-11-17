provider "aws" {
region     = "us-east-1"
access_key ="__ACCESSKEY__"
secret_key ="__SECRETKEY__"
}

resource "aws_instance" "ec2instance" {
ami           = "ami-05fa00d4c63e32376"
instance_type ="t2.micro"
subnet_id = "subnet-01789892a7cc20dc0"
key_name  = "KeYavuz"
tags = {
Name = "SERVER"
Environment ="DEV"
OS = "Linux"
Managed = "IAC"
}
}
