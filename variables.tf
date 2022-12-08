variable "instance_name" {
        description = "Instance name"
        default = "pc1"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "VPC subnet"
        default = "subnet-01a538dbe48077d96"
}

variable "ami_id" {
        description = "AMI"
        default = "ami-0574da719dca65348"
}

variable "number_of_instances" {
        description = "number of instances"
        default = 1
}


variable "key_name" {
        default = "main-key"
}

variable "sec_group" {
        description = "Security group name"
        default = "sg-0d35aa88f35596011"
}