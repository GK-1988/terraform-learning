resource "aws_instance" "roboshop-mongodb" {
    ami = var.ami_id
    instance_type =  var.instance_type
    vpc_security_group_ids = [aws_security_group.roboshop-mongodb1.id]

    tags = var.ec2_tags
}


resource "aws_security_group" "roboshop-mongodb1" {
  name        = "roboshop-mongodb1"
  description = "Example security group"  

egress{
    from_port        = var.from_port
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      =  var.cidr  
  }

egress{
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr    
  }
tags = var.ec2_tags
}


