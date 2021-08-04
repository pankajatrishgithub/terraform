data "aws_availability_zones" "my_zones"{
    filter {
        name = "opt-in-status"
        values = ["opt-in-not-required"]
    }
}
resource "aws_instance" "ec2demo" {
 
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.aws_instance
    user_data = file("${path.module}/app1-install.sh")
    vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
    #identifier = expression #argument
    for_each = toset(data.aws_availability_zones.my_zones.names)
    availability_zone = each.key
    tags = {
        "Name" = "pankaj-instancetf-${each.value}"
    }
}