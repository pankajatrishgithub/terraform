resource "aws_instance" "ec2demo" {
 
    ami = "ami-0bbe2dcd1861a9095"
    instance_type = "t2.micro"
    #user_data = file("${path.module}/app1-install.sh")
    #identifier = expression #argument
    tags = {
        "Name" = "pankaj-ec3tf"
    }
}