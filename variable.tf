variable "aws_region" { 
    description = "Region in which aws resource to be created"
    type = strings
    default = "us-east-2"
}

variable "aws_instance" {
    description = "modify the instance type"
    type = strings
    default = "t2.micro"
  
}