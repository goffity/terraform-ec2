provider "aws" {
    profile =   "terraform"
    region  =   "ap-southeast-1"
}

resource "aws_instance" "example" {
    ami = "ami-09a4a9ce71ff3f20b"
    instance_type = "t2.micro"
    key_name = "terraform"
    security_groups = ["ec2-web"]
}