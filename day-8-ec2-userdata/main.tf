resource "aws_instance" "fruits" {
    ami = "ami-0ec0e125bb6c6e8ec"
    instance_type = "t2.micro"
    key_name = "04-07KEYPAIR"
    user_data = file("script.sh")
    tags = {
      Name = "EC2-userdata"
    }
  
}
