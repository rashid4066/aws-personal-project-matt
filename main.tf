# main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_cloud9_environment_ec2" "example" {
  name          = "cloud9-for-test"
  instance_type = "t2.micro"
  connection_type = "CONNECT_SSM"
  image_id = "amazonlinux-2-x86_64"
  subnet_id = "subnet-0dc20f97a420a425f"
  owner_arn = "arn:aws:iam::629736019646:user/rashid"
}
