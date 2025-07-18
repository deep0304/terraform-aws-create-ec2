data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_instance" "my_new_server" {
  ami             = data.aws_ami.ubuntu.id
  instance_type   = var.instance_type_name
  key_name        = var.key_name
  security_groups = var.security_group


  tags = {
    Name = "instance_name"
  }
}

