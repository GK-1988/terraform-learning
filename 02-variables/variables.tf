variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}


variable "ami_id" {
  type        = string
  description = "ami id for the EC2 instance"
  default     = "ami-0055977a6e828a4f4"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "roboshop-vars"
        Environment = "dev"
        Terraform = "true"
        project = "roboshop"
        Component = "mongodb"
    }
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"] 
}

variable "from_port" {
    type = number
    default = 0
}