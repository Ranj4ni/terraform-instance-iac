resource "aws_instance" "web" {
    ami = "ami-06e11c4cc68c362dd"
    instance_type = "t2.micro"
    #count = 2                                          
    tags = {                                 # workspace names = default & app          
        Name = "web-${terraform.workspace}" # Name = "dev-${count.index}"
    }
}
# simple  creation of ec2
resource "aws_instance" "web" {
    ami = "ami-0d6b57555f03e6be8"
    instance_type = "t2.small"
    count = 5
    tags = {
        Name = "terraform-ec2"
    }
}
