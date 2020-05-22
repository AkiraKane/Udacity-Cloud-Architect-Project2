# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    region = "us-east-1"
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "t2_instances" {
    ami = "${var.ami}"
    instance_type = "t2.micro"
    count = 4

    tags = {
        Name = "Udacity T2"
    }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "m4_instances" {
#     ami = "${var.ami}"
#     instance_type = "m4.large"
#     count = 2

#     tags = {
#         Name = "Udacity M4"
#     }
# }