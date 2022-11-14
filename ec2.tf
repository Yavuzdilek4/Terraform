Provider "aws" {
region     = "us-east-1"
access_key ="__ACCESSKEY__"
secret_key ="__SECRETKEY__"
}

resource "aws_instance" "ec2instance" {
ami           = "ami-05far56849922"
instance_type ="t2.micro"
subnet_id = "subnet-065785"
key_name  = "KeYavuz"
tags = {
Name = "SERVER"
Environment ="DEV"
OS = "Linux"
Managed = "IAC"
}
}
