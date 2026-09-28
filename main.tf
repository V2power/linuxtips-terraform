locals {
  name = lower(var.name)
  db = lower(var.db)
}

data "aws_ami" "ubuntu" {
  provider    = aws
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

resource "aws_instance" "this" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = local.name
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [ aws_instance.db ]
}


resource "aws_instance" "db" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = local.db
  }
}
