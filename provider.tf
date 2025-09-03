resource "aws_instance" "web" {
    ami = "ami-06e11c4cc68c362dd"
    instance_type = "t2.micro"
    #count = 2                                          
    tags = {                                 # workspace names = default & app          
        Name = "web-${terraform.workspace}" # Name = "dev-${count.index}"
    }
}
