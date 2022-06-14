# resource "aws_instance" "dev" {
#   count = 3
#   ami = "ami-09d56f8956ab235b3" # Ubuntu Server 22.04 LTS
#   instance_type = "t2.micro"
#   key_name = "terraform-aws"
#   tags = {
#       Name = "dev${count.index}"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
# }

# resource "aws_instance" "dev4" {
#   ami = var.amis["us-east-1"]
#   instance_type = "t2.micro"
#   key_name = var.key_name
#   tags = {
#       Name = "dev4"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
#   depends_on = [aws_s3_bucket.dev4]
# }

# resource "aws_instance" "dev5" {
#   ami = "ami-09d56f8956ab235b3"
#   instance_type = "t2.micro"
#   key_name = "terraform-aws"
#   tags = {
#       Name = "dev5"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
# }

resource "aws_instance" "dev6" {
  provider = aws.us-east-2
  ami = var.amis["us-east-2"] # Amazon Linux 2 Kernel 5.10
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
      Name = "dev6"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
  depends_on = [aws_dynamodb_table.dynamodb-homolog]
}

resource "aws_instance" "dev7" {
  provider = aws.us-east-2
  ami = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name = var.key_name
  tags = {
      Name = "dev7"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
}