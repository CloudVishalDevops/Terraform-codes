# create instance 

resource "aws_instance" "luffy-ec2" {
    ami = "ami-0d6560f3176dc9ec0"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.luffy.id
    key_name = "luffy"
    vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
    tags = {
      Name = "luffy-ec2"
    }
}