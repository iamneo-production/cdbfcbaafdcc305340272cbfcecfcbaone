provider "aws" {
  region = "ap-northeast-1" # Singapore region
  access_key = "AKIA2UXDBU32XYWXALGT"
  secret_key = "VzYZh1fajiCb3fhVuETWSsGJoASUNyHlDddsgkBF"
}

resource "aws_instance" "example" {
  ami           = "ami-0dacd9d37849a9f38" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}