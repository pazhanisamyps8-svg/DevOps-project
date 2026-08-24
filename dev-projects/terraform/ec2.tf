# You dont have AMI in your code, so I added a data source to fetch the latest Ubuntu AMI for the specified region. This will allow you to launch EC2 instances with the most recent Ubuntu image available.
# Use the latest Ubuntu AMI for the specified region
# This data source fetches the most recent Ubuntu AMI available in the specified AWS region. It filters the AMIs based on the owner ID for Canonical (the company behind Ubuntu) and the naming convention for Ubuntu 24.04 server images. Additionally, it ensures that only HVM (Hardware Virtual Machine) virtualization types are considered. 
data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Create an EC2 instance in the public subnet

resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web.id]
  associate_public_ip_address = true

  key_name = aws_key_pair.devops.key_name

  tags = {
    Name = "devops-web-server"
  }
}

# Create an EC2 instance for monitoring tools.

resource "aws_instance" "web2" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web.id]
  associate_public_ip_address = true

  key_name = aws_key_pair.devops.key_name

  tags = {
    Name = "devops-web-server-monitoring"
  }
}