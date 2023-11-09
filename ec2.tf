data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}




resource "aws_instance" "Application_instance" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.allow_ssh_3000.id ]
  subnet_id       = aws_subnet.subnet-2.id

  tags = {
    Name = "Application_instance"
  }

  root_block_device {
    delete_on_termination = true
  }
}



resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = "true"

  tags = {
    Name = "bastion"
  }
  
  root_block_device {
    delete_on_termination = true
  }
}